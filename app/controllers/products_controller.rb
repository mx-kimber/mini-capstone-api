class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  def index

    @products = Product.all
    if current_user
      render :index
    else
      render json: {message: "Please log in. Denied."}, status: :unauthorized
    end

  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      quantity: params[:quantity],
      description: params[:description],
      supplier_id: params[:supplier_id],

    )
    @product.save
    render :show
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.quantity = params[:quantity] || @product.quantity
    @product.supplier_id = params[:supplier_id] || @product.supplier_id

    @product.save
    render :show
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "product as been destroyed successfully"}
  end

end



