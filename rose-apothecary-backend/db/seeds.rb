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
Item.create(name: "Rose Apothecary Mug", cost: "14.08", category: ["Drinkware"], image: "https://i.etsystatic.com/24655207/r/il/225fa8/2753595254/il_1588xN.2753595254_rm71.jpg", description: "Cereamic mug, complete with the Rose Apothecary Logo")
Item.create(name: "Rose Apothecary Soy Candle", cost: "19.95", category: ["Decoration", "Home Decor"], image: "https://i.etsystatic.com/14012651/r/il/01aaae/2486833864/il_794xN.2486833864_646x.jpg", description: "Handmade & locally sourced scented soy candle. 12oz Jar with 50+ hours of burn time!")
Item.create(name: "Maroon Rose Apothecary T-Shirt", cost: "12.50", category: ["Apparel"], image: "https://i.etsystatic.com/21491184/r/il/371622/2859161957/il_1140xN.2859161957_e34f.jpg", description: "Hand crafted & locally sourced polyester and cotten blended shirt.")
Item.create(name: "Black Rose Apothecary T-Shirt", cost: "12.50", category: ["Apparel"], image: "https://i.etsystatic.com/20290756/r/il/326374/2482136026/il_1140xN.2482136026_fls0.jpg", description: "Hand crafted & locally sourced polyester and cotten blended shirt.")
Item.create(name: "White Rose Apothecary T-Shirt", cost: "12.50", category: ["Apparel"], image: "https://i.etsystatic.com/24712389/r/il/c2d390/2856402118/il_1140xN.2856402118_gtq0.jpg", description: "Hand crafted & locally sourced polyester and cotten blended shirt.")
Item.create(name: "Rose Apothecary Square Planter", cost: "16.00", category: ["Home Decor"], image: "https://i.etsystatic.com/22708592/r/il/9ba1c7/2856811105/il_1140xN.2856811105_818y.jpg", description: "Rose Apothecary square pot- which can be used as a planter, candle holder, pencil or brush cup and is even food safe! Handcrafted from earthenware clay and lead free glazes, kiln fired to over 1900 degrees- safe to place in the dishwasher if used for food. Measures 4in x 4in.")
Item.create(name: "Rose Apothecary Round Planter", cost: "25.00", category: ["Home Decor"], image: "https://i.etsystatic.com/17779380/r/il/519827/2430226687/il_1140xN.2430226687_tfrh.jpg", description: "Rose Apothecary round pot. High quality pottery plant with drainage holes in the pots (Saucer Tray Included). Perfect for succiulents and other cacti. Measures Diameter 4.75in, Height 4.25in, Base 2.7in, Saucer Diameter 4in.")
Item.create(name: "Heart Sweatshirt", cost: "22.95", category: ["Apparel"], image: "https://i.etsystatic.com/22187251/r/il/d95f6e/2815868769/il_1140xN.2815868769_patb.jpg", description: "50/50 Cotton and Polyester blend sweatshirt, as seen worn by the Rose Apothecary's own David Rose.")
Item.create(name: "Rose Apothecary Heavy Duty Tote Bag", cost: "24.95", category: ["Apparel", "Accessories"], image: "https://i.etsystatic.com/24342235/r/il/267c04/2694986135/il_1140xN.2694986135_pwen.jpg", description: "100% Cotton, heavy duty canvas tote bag. Very roomy and can hold up to 30lbs!")
Item.create(name: "Rose Apothecary Tote Bag", cost: "12.50", category: ["Apparel", "Accessories"], image: "https://i.etsystatic.com/25856198/r/il/5aef47/2707866444/il_1140xN.2707866444_ggl4.jpg", description: "100% Cotton tote bag, perfect for those busy days spent shopping or running errands.")
Item.create(name: "Fold in the Cheese! Wooden Spoons", cost: "18.95", category: ["Utensils"], image: "https://i.etsystatic.com/24341605/r/il/d23da4/2615069091/il_1140xN.2615069091_8rej.jpg", description: "These 12 inch spoons feature David and Moira Rose and one of their own classic interactions. Hand wash only.")
Item.create(name: "Rose Apothecary Mask with Filter Included", cost: "10.00", category: ["Apparel"], image: "https://i.etsystatic.com/26549274/r/il/db55b0/2740734360/il_1140xN.2740734360_9l97.jpg", description: "Hand Made, 100% Breathable Polyester soft Face masks with elastic ear loops & adjustment clips for sizing. Reversible, double layer/sided with filter slot. Reusable and washable")
Item.create(name: "Heart Love Unisex Sweatshirt", cost: "19.95", category: ["Apparel"], image: "https://i.etsystatic.com/26114454/r/il/e86297/2771417670/il_1140xN.2771417670_qvcw.jpg", description: "Loose fit, 50/50 Cotton and Polyester blend sweatshirt, as seen worn by the Rose Apothecary's own David Rose.")
Item.create(name: "Geometric Sweatshirt", cost: "85.49", category: ["Apparel"], image: "https://i.etsystatic.com/22187251/r/il/a17122/2657472104/il_1140xN.2657472104_1ix5.jpg", description: "Classic fit, 14%/86% Cotton and Polyester blend sweatshirt, as seen worn by the Rose Apothecary's own David Rose.")
Item.create(name: "Goat Milk Soap", cost: "15.00", category: ["Cosmetics"], image: "https://cdn.shopify.com/s/files/1/0223/7461/products/Rose_Apothecary-151-editAA_600x.jpg?v=1605823455", description: "9oz bar. Light the candles because the creamy, rich lather of our Rose Apothecary Goat Milk Soap makes every shower feel like slipping into a just pretentious enough bath filled with rose petals. Our unique, goat milk-based formula melts effortlessly into the skin, locking in moisture and the rich floral tones of our Heirloom Rose scent.")
Item.create(name: "Whipped Body Cream", cost: "38.00", category: ["Cosmetics"], image: "https://cdn.shopify.com/s/files/1/0223/7461/products/B18BB8-RA-1_600x.png?v=1587024688", description: "8 fl oz. The quickest way to melt hearts? Our luxuriously rich whipped body cream. This velvety goat-milk formula soaks right into the skin, leaving a dusting of our irresistible Heirloom Rose scent — a floral arrangement of rose, jasmine, and neroli blossom complemented by geranium and sandalwood.")
Item.create(name: "Tinted Lip Balm", cost: "8.00", category: ["Cosmetics"], image: "https://cdn.shopify.com/s/files/1/0223/7461/products/B18LIPB13-RA-1_600x.png?v=1587024686", description: "0.15 oz. When your lip balm is made from 100% natural goat milk and botanicals, it’s easy to walk through the world with rose-tinted lips. Delicately scented with our cult-favorite fragrance, Heirloom Rose, this hydrating balm not only seals in moisture but also seals your lips with a kiss of floral tones.")
Item.create(name: "Rose Pin", cost: "16.00", category: ["Accessories"], image: "https://schittscreek.shop/wp-content/uploads/sites/3/2019/12/Schitts-Creek-Rose-Pin.jpg", description: "Double-post pin, displaying a stemmed rose design with a white background and glossy finish. Pin measures 1″ x 1.5″")
Item.create(name: "Bleu Cheese", cost: "50.00", category: ["Food"], image: "https://cdn.kitchensanity.com/wp-content/uploads/blue-cheese.jpg", description: "Sold by the pound, our locally sourced bleu cheese comes straight from the farms of Schitt's Creek. Our creamy textured, and sharp tasting bleu cheese is set to wow any guests at a dinner party.")
Item.create(name: "Plunger", cost: "9.95", category: ["Toiletries", "Accessories"], image: "https://www.thespruce.com/thmb/4IkYyK9CGJHV5_yNnORds9k0fSc=/2121x1414/filters:fill(auto,1)/GettyImages-173683465-58f822b83df78ca159d4543a.jpg", description: "A regular plunger for every day bathroom usage.")

# CartItem.create(cart_id: , item_id: )
CartItem.create(cart_id: Cart.first.id, item_id: Item.first.id, quantity: 1)

# Review.create(user_id: , item_id: , comment: , rating: )
Review.create(user_id: User.first.id, item_id: Item.first.id, comment: "Man this product rocks!", rating: 5)
