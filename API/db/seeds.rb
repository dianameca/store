# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product1 = Product.create(product_name: "Nutella", product_description: "hazelnut cocoa", product_keywords: "dessert, sweet")
product2 = Product.create(product_name: "Doritos", product_description: "chips", product_keywords: "salty, spicy")
product3 = Product.create(product_name: "Gummy Bears", product_description: "jelly", product_keywords: "sweet, candy")