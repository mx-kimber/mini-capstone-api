class ProductsController < ApplicationController

  def synthwear
    render json: {message: "SynthWear Inventory"}
  end

  def biochip_implants
    render json: {message: "Optical, Memory, language"}
  end

  def cybernetics
    render json: {message: "Implants, Enhancements, Cosmetics"}
  end

  def boosters
    render json: {message: "x9-Boost, drip shots, pain blockers"}
  end

end
