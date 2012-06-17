class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :source_ip
      t.string :browser
      t.string :country
      t.string :os
      t.integer :website_id
      t.datetime :created_at
    end
  end
end
