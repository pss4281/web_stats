class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.integer :account_id
      t.string :name
      t.string :uri

      t.timestamps
    end
  end
end
