class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :eb_title
      t.text :eb_intro
      t.text :eb_ckeditor
      t.string :eb_link
      t.string :eb_image
      t.string :eb_price_is
      t.string :eb_price_was
      t.string :eb_price_sale
      t.string :eb_youtube_01
      t.string :eb_youtube_02
      t.string :eb_review
      t.string :eb_source
      t.string :eb_code
      t.string :eb_date
      t.string :eb_spare_01
      t.string :eb_spare_02
      t.string :eb_spare_03
      t.string :eb_spare_04
      t.string :eb_spare_05
      t.string :eb_spare_06
      t.string :eb_spare_07
      t.string :eb_spare_08
      t.string :eb_spare_09
      t.string :eb_spare_10
      t.string :eb_spare_11
      t.string :eb_spare_12
      t.string :eb_spare_13
      t.string :eb_spare_14
      t.string :eb_spare_15
      t.string :eb_spare_16
      t.string :eb_spare_17
      t.string :eb_spare_18
      t.string :eb_spare_19
      t.string :eb_spare_20
      t.text :eb_spare_21
      t.text :eb_spare_22
      t.text :eb_spare_23
      t.text :eb_spare_24
      t.text :eb_spare_25


      t.timestamps null: false
    end
  end
end
