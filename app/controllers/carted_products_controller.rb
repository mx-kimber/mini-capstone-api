class CartedProductsController < ApplicationController

  def index

    @carted_products = current_user.carted_products.where(status:"carted")
    render :index
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
    render :show
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status]
    )
    @carted_product.save
    render :show

  end
end
