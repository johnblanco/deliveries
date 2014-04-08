class CartItem < ActiveRecord::Base
  attr_accessible :amount, :product, :cart, :comments

  belongs_to :product
  belongs_to :cart
end