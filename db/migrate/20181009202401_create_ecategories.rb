class CreateEcategories < ActiveRecord::Migration
  def change
    create_table :ecategories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
