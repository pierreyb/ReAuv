namespace :bceTask do
  desc "Load BCE Entreprise data"
  task :loadEntrepriseData => :environment do
    require 'csv' 
    EntrepriseCsvFile=File.join(Rails.root,"lib","BCE","data","enterprise.csv")  
    
    CSV.foreach(EntrepriseCsvFile, encoding:'UTF-8', :headers => true) do |row|
      entreprise = BanqueCarrefourEntreprise.new(
        :entreprise_number    => row[0], 
        :status               => row[1],         
        :juridical_situation  => row[2],
        :type_of_entreprise   => row[3],
        :juridical_form       => row[4], 
        :start_date           => row[5])
      entreprise.save
    end
  end


  desc "Load BCE Establishment data"
  task :loadEstablishmentData => :environment do
    require 'csv' 
    BceDataCsvFile=File.join(Rails.root,"lib","BCE","data","establishment.csv")
    
    CSV.foreach(BceDataCsvFile, encoding:'UTF-8', :headers => true) do |row|
      data = BceEstablishment.new(
        :establishment_number => row[0],         
        :start_date           => row[1],
        :entreprise_number    => row[2])
      data.save
    end
  end


  desc "Load BCE Denomination data"
  task :loadDenominationData => :environment do
    require 'csv' 
    BceDataCsvFile=File.join(Rails.root,"lib","BCE","data","denomination.csv")
    
    CSV.foreach(BceDataCsvFile, encoding:'UTF-8', :headers => true) do |row|
      data = BceDenomination.new(
        :entity_number        => row[0],         
        :language             => row[1],
        :type_of_denomination => row[2],
        :denomination         => row[3])
      data.save
    end
  end


  desc "Load BCE Addresses data"
  task :loadAddressData => :environment do
    require 'csv' 
    BceDataCsvFile=File.join(Rails.root,"lib","BCE","data","address.csv")
     
    CSV.foreach(BceDataCsvFile, encoding:'UTF-8', :headers => true) do |row|

      if not (row[3] =~ /^\s*$/) then 
        c = ISO3166::Country.find_by_name(row[3])
        if ! c.nil? then
          country = c[0]
        else
          country = ""
          print "Country not found : ",row[3],"\n"
        end
      else
        country = "BE"
      end        
   
      data = BceAddress.new(
        :entity_number        => row[0],         
        :type_of_address      => row[1],
        :country              => country,
        :zipcode              => row[4],
        :municipality         => row[6],
        :street               => row[8],
        :house_number         => row[9],
        :box                  => row[10],
        :extra_address_info   => row[11],
        :date_striking_off    => row[12])
      data.save
    end
  end


  desc "Load BCE Contact data"
  task :loadContactData => :environment do
    require 'csv' 
    BceDataCsvFile=File.join(Rails.root,"lib","BCE","data","contact.csv")
    
    CSV.foreach(BceDataCsvFile, encoding:'UTF-8', :headers => true) do |row|
      data = BceContact.new(
        :entity_number        => row[0],         
        :entity_contact       => row[1],
        :contact_type         => row[2],
        :value                => row[3])
      data.save
    end
  end


  desc "Load BCE Activity data"
  task :loadActivityData => :environment do
    require 'csv' 
    BceDataCsvFile=File.join(Rails.root,"lib","BCE","data","activity.csv")
    
    CSV.foreach(BceDataCsvFile, encoding:'UTF-8', :headers => true) do |row|
      data = BceActivity.new(
        :entity_number        => row[0],         
        :activity_group       => row[1],
        :nace_version         => row[2],
        :nace_code            => row[3],
        :classification       => row[4])
      data.save
    end
  end


end
