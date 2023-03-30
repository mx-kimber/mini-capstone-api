class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product =  Product.find_by(id: params[:id])
    render :show
  end

end
# render json: @products This will render the same but with "created_at"

  # def synthwear
  #   render json: {message: "SynthWear Inventory"}
  #   @products = Product.all
  #   render template: "products/synthwear"
  #   render json: @products
  # end

  # def biochip_upgrades
  #   render json: {message: "Optical, Memory, language"}
  # end

  # def cybernetics
  #   render json: {message: "Implants, Enhancements, Cosmetics"}
  # end

  # def boosters
  #   render json: {message: "x9-Boost, drip shots, pain blockers"}
  # end


