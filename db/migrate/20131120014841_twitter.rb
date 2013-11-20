class Twitter < ActiveRecord::Migration
  def up 
  	create_table :twitter do |t|
  		t.string :text
  		t.integer :user_id
  		t.datetime :created_at

  end

  def down
  	drop_table :twitter
  end
end
