class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    # @product =  Product.find_by(id: params[:id])
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create

    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    @product.save
    render :show
  end


end


# @product = Product.new(name: "ThermJac Jacket",
    # price: 10_000, image_url: "https://preview.redd.it/a-thermal-camouflage-jacket-with-42-graphene-patches-and-v0-tbqkkgofozha1.jpg?width=640&crop=smart&auto=webp&s=b9970bb8b343f64e2b465c7c36e868c8dfcae807",
    # description: "Therm-Invis Jacket | formable | mini-jack port | HueShift | Sec-ACCEL & Sec-URE chip")
    # @product.save
    # render :show








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


