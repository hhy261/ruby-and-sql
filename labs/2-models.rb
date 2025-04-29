# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Amelie"
new_salesperson["last_name"] = "Hwang"
new_salesperson["email"] = "hhy261@gmail.com"
new_salesperson.save
p new_salesperson

new_salesperson2 = Salesperson.new
new_salesperson2["first_name"] = "Collin"
new_salesperson2["last_name"] = "Schedler"
new_salesperson2["email"] = "collin@gmail.com"
new_salesperson2.save
p new_salesperson2


# 3. write code to display how many salespeople rows are in the database
no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
collin = Salesperson.where({"first_name" => "Collin"})[0]
collin["last_name"] = "scschedler"
collin.save
p collin

# CHALLENGE:
# 5. write code to display each salesperson's full name

salespeople = Salesperson.all

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

for person in salespeople
    first_name = person["first_name"]
    last_name = person["last_name"]
    puts "#{first_name} #{last_name}"
end

index = 0
loop do
    if index == salespeople.count
        break
    end

    person = salespeople[index]
    first_name = person["first_name"]
    last_name = person["last_name"]
    puts "#{first_name} #{last_name}"

    index = index + 1
end