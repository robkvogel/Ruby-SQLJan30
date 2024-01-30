class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      #add columns for things we care about, t.string is a command to talk to table
      #no interger/ id column because framework automatically adds it
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end

#This code should only be run once. The name of the file is a timestamp and Ruby won't let you re-run it.
# Can only re-run if you have no data (delete datebase)
#more likely, you'll run a re-migration file that edits the tables vs trying to create new ones