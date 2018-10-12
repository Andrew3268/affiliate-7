class AddImpressionsCountToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :impressions_count, :int
  end
end
