require 'csv'
require 'yaml'


CodeCsvFile=File.join(File.dirname(__FILE__),"data","code.csv")
CodeYamlFile=File.join(File.dirname(__FILE__),"data","code.yml")

bceCategory=""
bceCategoryCode=""
bceCode = Hash.new
bceCategoryCodeArray = Hash.new
bceCategoryCodeDescription = Hash.new
firstLine = true 

CSV.foreach(CodeCsvFile, encoding:'UTF-8', :headers => true) do |row|
  if firstLine then
    bceCategory = row[0]
    bceCategoryCode = row[1]
    firstLine = false
  end
  # If a new Category is found, we put it in the hash
  if bceCategoryCode != row[1] then
    bceCategoryCodeArray.store(bceCategoryCode,bceCategoryCodeDescription)
    bceCategoryCodeDescription = Hash.new
    bceCategoryCode = row[1]
  end
  if bceCategory != row[0] then
    bceCode.store(bceCategory,bceCategoryCodeArray)      
    bceCategoryCodeArray = Hash.new
    bceCategory = row[0]
  end
  bceCategoryCodeDescription.store(row[2].downcase,row[3])
end 

File.open(CodeYamlFile, 'w') { |f| f.write(bceCode.to_yaml) }
