class ProductsController < ApplicationController
  def index
    @categories = Category.all(:include => :products)
    @current_items = []

    unless session[:cart_id].nil?
      @current_items = Cart.find(session[:cart_id]).cart_items
    end
  end

  def modal_content
    @product = Product.find(params[:id])
    render partial: 'modal_content'
  end
end
