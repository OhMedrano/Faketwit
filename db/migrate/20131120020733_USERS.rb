class Users < ActiveRecord::Migration
  def up
  	create_table :users do |u|
  		u.text :fname
  		u.text :lname
  		u.text :email
  		u.text :username
  		u.datetime :created

  end

  def down
  	drop_table :users
  end
end
