class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :owner_id

      t.datetime :created_at
    end
  end
end
