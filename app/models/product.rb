class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :price, :category

  belongs_to :category
end
