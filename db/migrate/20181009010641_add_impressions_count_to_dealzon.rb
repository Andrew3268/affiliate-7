class AddImpressionsCountToDealzon < ActiveRecord::Migration
  def change
    add_column :dealzons, :impressions_count, :int
  end
end
