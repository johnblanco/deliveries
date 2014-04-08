class CartsController < ApplicationController
  def add_product
    cart = nil

    if session[:cart_id].nil?
      cart =  Cart.create
      session[:cart_id] = cart.id
    else
      cart = Cart.find(session[:cart_id])
    end

    cart_item = CartItem.new
    cart_item.product_id = params[:product_id]
    cart_item.comments = params[:comments]
    cart_item.amount = params[:amount]
    cart_item.save

    cart.cart_items << cart_item

    render :text => "OK"
  end

  def item_list
    items = []

    unless session[:cart_id].nil?
      items = Cart.find(session[:cart_id]).cart_items
    end
    render partial: 'items', :locals => {:items=> items}
  end

  def remove_item
    CartItem.delete(params[:item_id])
    render :text => "OK"
  end
end
