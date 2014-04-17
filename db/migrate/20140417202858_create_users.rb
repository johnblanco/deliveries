class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email, :null => false
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.integer :login_count, :default => 0, :null => false
      t.datetime :last_login_at
      t.datetime :current_login_at
      t.timestamps
    end

    add_index :users, :email
  end

  def down
    drop_table :users
  end


end
