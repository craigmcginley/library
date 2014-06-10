class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |table|
      table.string :name, null: false
    end
  end
end
