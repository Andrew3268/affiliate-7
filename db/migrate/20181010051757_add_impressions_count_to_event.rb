class AddImpressionsCountToEvent < ActiveRecord::Migration
  def change
    add_column :events, :impressions_count, :int
  end
end
