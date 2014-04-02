class ProductsController < ApplicationController
  def index
    @categories = Category.all(:include => :products)
  end

  def modal_content
    @product = Product.find(params[:id])
    render partial: 'modal_content'
  end

  def add_to_delivery

  end
end
