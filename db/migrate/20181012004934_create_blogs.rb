class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|

      t.string :blog_title
      t.string :blog_writer
      t.string :blog_date
      t.text :blog_intro
      t.string :blog_image
      t.text :blog_ckeditor

      t.timestamps null: false
    end
  end
end
