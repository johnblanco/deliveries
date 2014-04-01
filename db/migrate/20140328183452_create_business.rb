class CreateBusiness < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :logo
      t.string :phone
      t.string :address
      t.string :company_type
      t.string :email
    end
  end
end
