class CreateFirstAndLastInReaders < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.find_each do |reader|
      names_array = reader.name.split(' ')
      reader.first_name = names_array[0]
      reader.last_name = names_array[1]
      reader.save
    end

    change_column :readers, :first_name, :string, null: false
    change_column :readers, :last_name, :string, null: false
  end
end
