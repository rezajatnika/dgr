class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @product, include: [:inventory, :deposits]  }
    end
  end
end
