# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cart.destroy_all
CartItem.destroy_all
Item.destroy_all
Review.destroy_all

# User.create(first_name: , last_name: , username: , email: , password: )
User.create(first_name: "Admin", last_name: "Admin", username: "Admin", email: "Admin@admin.com", password: "testing1")
User.create(first_name: "Alec", last_name: "Scully", username: "Smartalec246", email: "scullyalec@gmail.com", password: "testing1")

# Cart.create(user_id: )
Cart.create(user_id: User.first.id)

# Item.create(name: , cost: , category: , image: , description: )
Item.create(name: "Rose Apothecary Mug", cost: 14.08, category: ["Drinkware"], image: "https://i.etsystatic.com/24655207/r/il/225fa8/2753595254/il_1588xN.2753595254_rm71.jpg", description: "Cereamic mug, complete with the Rose Apothecary Logo")

# CartItem.create(cart_id: , item_id: )
CartItem.create(cart_id: Cart.first.id, item_id: Item.first.id)

# Review.create(user_id: , item_id: , comment: , rating: )
Review.create(user_id: User.first.id, item_id: Item.first.id, comment: "Man this product rocks!", rating: 5)
