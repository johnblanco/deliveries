class Business < ActiveRecord::Base
  attr_accessible :name, :logo, :phone, :address, :email

end
