class CreateCartItem < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.belongs_to :product
      t.belongs_to :cart
      t.integer :amount
      t.text :comments
    end
  end
end
