class Category < ActiveRecord::Base
  attr_accessible :name, :picture, :products

  has_many :products
end
