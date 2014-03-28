class ProductsController < ApplicationController
  def index
    @categories = Category.all(:include => :products)
  end
end
