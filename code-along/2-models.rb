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

#puts "There are #{Company.all.count} companies"

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
new_company = Company.new

#puts new_company.inspect
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "apple.com"

#puts new_company.inspect

puts "there are #{Company.all.count} companies"
new_company.save
#save function inserts into database


puts "Now there are #{Company.all.count} companies"
#puts new_company.inspect

new_company2= Company.new
new_company2["name"] = "Amazon"
new_company2["city"] = "Seattle"
new_company2["state"] = "WA"
new_company2.save

new_company2= Company.new
new_company2["name"] = "Twitter"
new_company2["city"] = "SF"
new_company2["state"] = "CA"
new_company2.save

puts "Now there are #{Company.all.count} companies"
#puts new_company2.inspect

# 3. query companies table to find all row with California company
all_companies = Company.all
#puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
#puts "Companies in Cali are #{cali_companies.inspect}"
puts "Num of Cali companies is #{cali_companies.count}"

# 4. query companies table to find single row for Apple

#apple = Company.where({"name" => "Apple"})
# or can use Find By if you expect only to find 1 record. Where gives you multiple
apple = Company.find_by({"name" => "Apple"})

#puts "Apple is is #{apple.inspect}"



#Array query always produces a table

# 5. read a row's column value

puts apple["url"]
# 6. update a row's column value
amazon = Company.find_by({"name" => "Amazon"})
amazon["url"] = "amazon.com"
amazon.save

# 7. delete a row
#find and delete twitter
twitter = Company.find_by({"name" => "Twitter"})
twitter.destroy