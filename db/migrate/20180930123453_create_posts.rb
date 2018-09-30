class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string :post_title
      t.text :post_intro
      t.string :post_link
      t.string :post_image
      t.string :post_price_is
      t.string :post_price_was
      t.string :post_price_sale
      t.string :post_youtube_01
      t.string :post_youtube_02
      t.string :post_review
      t.string :post_source
      t.string :post_spare_01
      t.string :post_spare_02
      t.string :post_spare_03
      t.string :post_spare_04
      t.string :post_spare_05
      t.string :post_spare_06
      t.string :post_spare_07
      t.string :post_spare_08
      t.string :post_spare_09
      t.string :post_spare_10
      t.string :post_spare_11
      t.string :post_spare_12
      t.string :post_spare_13
      t.string :post_spare_14
      t.string :post_spare_15
      t.string :post_spare_16
      t.string :post_spare_17
      t.string :post_spare_18
      t.string :post_spare_19
      t.string :post_spare_20
      t.text :post_spare_21
      t.text :post_spare_22
      t.text :post_spare_23
      t.text :post_spare_24
      t.text :post_spare_25

      t.timestamps null: false
    end
  end
end
