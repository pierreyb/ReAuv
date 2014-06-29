class BceActivity < ActiveRecord::Base
  attr_accessible :activity_group, :classification, :entity_number, :nace_code, :nace_version
end
