class CreateDealzons < ActiveRecord::Migration
  def change
    create_table :dealzons do |t|

      t.string :am_title
      t.text :am_intro
      t.string :am_link
      t.string :am_image
      t.string :am_code
      t.string :am_date
      t.string :am_price_is
      t.string :am_price_was
      t.string :am_price_sale
      t.string :am_review
      t.string :am_category
      t.string :am_expire
      t.string :am_shipping
      t.string :am_spare_01
      t.string :am_spare_02
      t.string :am_spare_03
      t.string :am_spare_04
      t.string :am_spare_05
      t.string :am_spare_06
      t.string :am_spare_07
      t.string :am_spare_08
      t.string :am_spare_09
      t.string :am_spare_10
      t.string :am_spare_11
      t.string :am_spare_12
      t.string :am_spare_13
      t.string :am_spare_14
      t.string :am_spare_15
      t.string :am_spare_16
      t.string :am_spare_17
      t.string :am_spare_18
      t.string :am_spare_19
      t.string :am_spare_20
      t.text :am_spare_21
      t.text :am_spare_22
      t.text :am_spare_23
      t.text :am_spare_24
      t.text :am_spare_25

      t.timestamps null: false
    end
  end
end
