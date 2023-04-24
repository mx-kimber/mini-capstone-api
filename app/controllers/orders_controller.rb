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
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      # Product.find_by(id: carted_product.product_id).price
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end

    tax_rate = 0.09
    calculated_tax = calculated_subtotal * tax_rate
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    @order.save

    carted_products.update_all(status: "purchased", order_id: @order.id)
    render :show
  end
end
