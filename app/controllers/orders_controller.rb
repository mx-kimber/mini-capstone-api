class OrdersController < ApplicationController
  before_action :authenticate_user


  def index
    @orders = current_user.orders
    render :index
  end

  def show
    @order = Order.find_by(id: params[:id], user_id: current_user.id)
    render :show
  end

  def create
    carted_products = current_user.carted_products.where(status: "Carted")
    calc_subtotal = 0
    carted_products.each do |carted_product|
      calc_subtotal += carted_product.quantity * carted_product.price
    end

    tax_rate = 0.09
    calc_tax = calc_subtotal * tax_rate
    calc_total = calc_subtotal + calc_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total
    )
      @order.save
      carted_products.update_all(status: "purchased", order_id: @orider.id)
      render :show


  end
end
