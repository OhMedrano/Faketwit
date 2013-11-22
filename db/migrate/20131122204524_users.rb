class Users < ActiveRecord::Migration
  def up
  	create_table :users do |u|
  		u.text :fname
  		u.text :lname
  		u.text :email
  		u.text :uname
  		u.text :password_salt
  		u.text :password_hash
  		u.datetime :created_at
  	end
  end

  def down
  	drop_table :users 
  end
end
