class Users < ActiveRecord::Migration
  def up
  	create_table :users do |u|
  		u.text :flname
  		u.text :username
  		u.text :email
  		u.text :password_salt
  		u.text :password_hash
  	end
  end

  def down
  	drop_table :users
  end
end
