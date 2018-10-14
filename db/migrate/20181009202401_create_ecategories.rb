class CreateEcategories < ActiveRecord::Migration
  def change
    create_table :ecategories do |t|
      t.string :name
      t.integer :ecategory_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
