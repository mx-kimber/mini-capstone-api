class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.new(
      name: name = params[:name],
      price: price = params[:price],
      made_by: made_by = params[:made_by],
      made_by: made_by = params[:made_by],
      image_url: image_url = params[:image_url],
      description: description = params[:description]
    )
    @product.save
    render :show
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.made_by = params[:made_by] || @product.made_by
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    @product.save
    render :show
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "product as been destroyed successfully"}
  end

end



