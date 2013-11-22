class Posts < ActiveRecord::Migration
  def up
  	create_table :post do |p|
  		p.text :body
  		p.text :user_id
  		p.datetime :created_at
  	end
  end

  def down
  drop_table :post
  end
end
