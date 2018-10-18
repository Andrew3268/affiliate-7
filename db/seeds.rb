# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category of Post
Category.create(name: "Tech")
Category.create(name: "Geeky & Ridiculous")
Category.create(name: "Home & kitchen")
Category.create(name: "Travel")
Category.create(name: "Outdoor & Sports")
Category.create(name: "Pet Sutff")


# Category of Dealzon
Acategory.create(name: "Sales & Offers")
Acategory.create(name: "Deals")
Acategory.create(name: "Promotions")
Acategory.create(name: "Promo Codes")

# Category of Event
Ecategory.create(name: "Featured Sales")
Ecategory.create(name: "Deals")
Ecategory.create(name: "Promo Codes")
Ecategory.create(name: "Interesing")

# Category of Blog
# Bcategory.create(name: "blog_01")
# Bcategory.create(name: "blog_02")
# Bcategory.create(name: "blog_03")
# Bcategory.create(name: "blog_04")
# Bcategory.create(name: "blog_05")