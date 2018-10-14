class CreateBcategories < ActiveRecord::Migration
  def change
    create_table :bcategories do |t|
      t.string :name
      t.integer :bcategory_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
