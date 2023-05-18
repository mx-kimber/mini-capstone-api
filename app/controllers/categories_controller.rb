class CategoriesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  def index
    @categories = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end

  def create
    @category = Category.new(
      name: params[:name]

      )
    @category.save
    render :show
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.name = params[:name] || @category.name

    @category.save
    render :show
  end

  def destroy
    @category = category.find_by(id: params[:id])
    @category.destroy
    render json: {message: "category as been destroyed successfully"}
  end

end
