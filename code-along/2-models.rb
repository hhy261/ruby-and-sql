# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

no_of_companies = Company.all.count
puts "Companies: #{no_of_companies}"

# 2. insert new rows in companies table
#INSERT INTRO
any
new_company=Company.new
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
# new_company["url"] = "http://apple.com"
new_company.save
p new_comp
new_company2 = Company.new
new_company2["name"] = "Amazon"
new_company2["city"] = "Seattle"
new_company2["state"] = "WA"
new_company2["url"] = "https://amazon.com"
new_company2.save
p new_company2


new_company3 = Company.new
new_company3["name"] = "AirBnB"
new_company3["city"] = "San Francisco"
new_company3["state"] = "CA"
new_company3["url"] = "https://airbnb.com"
new_company3.save
p new_company3


# 3. query companies table to find all row with California company
no_of_companies = Company.all.count
puts "Companies: #{no_of_companies}"

cali_companies = Company.where({"state" => "CA"})
puts "There are #{cali_companies.count} Cali companies"

# 4. query companies table to find single row for Apple
# apple = Company.where({"name" => "Apple"})[0]
apple = Company.find_by({"name" => "Apple"})
p apple

# 5. read a row's column value
p apple["name"]
p apple["id"]
p apple["city"]

# 6. update a row's column value
apple["url"] = "https://www.apple.com"
p apple
apple.save

# 7. delete a row
airbnb = Company.find_by({"name" => "AirBnB"})
p airbnb
airbnb.destroy

no_of_companies = Company.all.count
puts "Companies: #{no_of_companies}"
