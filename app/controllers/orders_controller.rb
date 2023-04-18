class OrdersController < ApplicationController

  def index
    @orders = Order.all
    render :index
  end

  def show
    @order = Order.find_by(id: params[:id])
    render :show
  end

  def create
    product = Product.find_by(id: params[:product_id])
    calc_subtotal = params[:quantity].to_i * product.price
    calc_tax = calc_subtotal * 0.09
    calc_total = calc_subtotal + calc_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )

    @order.save
    render :show
  end
end
