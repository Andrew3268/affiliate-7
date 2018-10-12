class AddBcategoryIdToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :bcategory_id, :integer
  end
end
