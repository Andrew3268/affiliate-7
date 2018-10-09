class AddAcategoryIdToDealzons < ActiveRecord::Migration
  def change
    add_column :dealzons, :acategory_id, :integer
  end
end
