class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change 
  	add_column :users, :username, :string #add a new column to table users called username, it is a string
  	add_index :users, :username, unique: true
  end
end
