class BanqueCarrefourEntreprise < ActiveRecord::Base
  self.primary_key = "entreprise_number"
  attr_accessible :entreprise_number, :juridical_form, :juridical_situation, :start_date, :status, :type_of_entreprise
end
