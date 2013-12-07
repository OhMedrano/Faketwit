class CreatePosts < ActiveRecord::Migration
  def up
  	create_table :posts do |t|
  		t.string :title
  		t.text :body
  		t.integer :user_id
  		t.timestamp :created_at
  	end
  end

  def down
  	drop_table :posts
  end
end
