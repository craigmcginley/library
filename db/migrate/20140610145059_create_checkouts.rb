class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |table|
      table.integer :book_id, null: false
      table.timestamps
    end
  end
end
