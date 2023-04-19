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
    if current_user.id == @order.user.id
      @order.save
      render :show
    else
      render json: {}, status: :unauthorized
    end

  end
end
