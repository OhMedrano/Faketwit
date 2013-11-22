class Posts < ActiveRecord::Migration
  def up
  	create_table :posts do |p|
  		p.text :post
  		p.integer :userid
  		p.datetime :created_at
  	end
  end

  def down
  	drop_table :posts
  end
end
