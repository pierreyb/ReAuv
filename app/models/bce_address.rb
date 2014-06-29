class BceAddress < ActiveRecord::Base
  attr_accessible :box, :country, :date_striking_off, :entity_number, :extra_address_info, :house_number, :municipality, :street, :type_of_address, :zipcode
end
