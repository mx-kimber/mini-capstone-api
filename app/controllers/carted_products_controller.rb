class CartedProductsController < ApplicationController

  def index

    @carted_products = current_user.carted_products.where(status: "carted")
    render :index
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
    render :show
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      quantity: params[:quantity],
      product_id: params[:product_id],
      status: "carted"
    )
    @carted_product.save
    render :show

  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.status = "removed"
    @carted_product.save
    render json: {message: "removed from your cart"}
  end
end
