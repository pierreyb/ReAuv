class BceEstablishment < ActiveRecord::Base
  #  belongs_to :entreprise_number, foreign_key: "entreprise_number"
  attr_accessible :establishment_number, :start_date, :entreprise_number
end
