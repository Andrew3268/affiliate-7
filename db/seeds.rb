# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category of Post
Category.create(name: "Menu_01")
Category.create(name: "Menu_02")
Category.create(name: "Menu_03")
Category.create(name: "Menu_04")

# Category of Dealzon
Acategory.create(name: "Sales & Offers")
Acategory.create(name: "Deals")
Acategory.create(name: "Coupons")
Acategory.create(name: "Promo Codes")
Acategory.create(name: "Promotions")