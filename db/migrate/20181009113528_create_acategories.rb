class CreateAcategories < ActiveRecord::Migration
  def change
    create_table :acategories do |t|
      t.string :name
      t.integer :acategory_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
