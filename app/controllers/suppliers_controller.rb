class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    render :index
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render :show
  end

  def create
    @supplier = Supplier.new(
      name: name = params[:name],
      email: email = params[:email],
      phone_number: phone_number = params[:phone_number]

    )
    @supplier.save
    render :show
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number

    @supplier.save
    render :show
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    render json: {message: "supplier as been destroyed successfully"}
  end

end
