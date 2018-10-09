class AddEcategoryIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :ecategory_id, :integer
  end
end
