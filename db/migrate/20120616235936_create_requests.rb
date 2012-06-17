class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :source_ip
      t.string :browser
      t.string :country
      t.string :os
      t.string :user_agent
      t.string :referer
      t.string :language
      t.string :charset
      t.integer :website_id
      t.datetime :created_at
    end

    add_index :requests, :country
    add_index :requests, :os
    add_index :requests, :browser
  end
end
