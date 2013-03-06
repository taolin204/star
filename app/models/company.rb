class Company < ActiveRecord::Base
  attr_accessible :address, :contact_number, :contact_person, :name, :postal_code
end
