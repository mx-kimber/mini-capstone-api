class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
    # @orders = Order.where(user_id: current_user.id)
    render :index
  end

  def show
    if current_user.id == @order.user.id
      render :show
    else
      render json: {message:"nope"}
    end
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
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total
    )

    @order.save
    render :show
  end
end
