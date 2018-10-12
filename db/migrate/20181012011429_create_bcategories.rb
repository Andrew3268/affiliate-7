class CreateBcategories < ActiveRecord::Migration
  def change
    create_table :bcategories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
