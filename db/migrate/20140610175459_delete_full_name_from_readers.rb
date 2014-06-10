class DeleteFullNameFromReaders < ActiveRecord::Migration
  def change
    remove_column :readers, :name
  end
end
