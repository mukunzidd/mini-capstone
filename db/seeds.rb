Image.create!([
  {url: "http://www.amooti.org/media/catalog/product/cache/1/image/1800x/040ec09b1e35df139433887a97daa66f/I/M/IMG_0515_2.JPG", product_id: nil},
  {url: "http://i-cdn.phonearena.com/images/articles/256479-image/iPhone-7-Jet-Black-on-iPhone-7-Plus-Black.jpg", product_id: 1},
  {url: "https://www1-lw.xda-cdn.com/files/2016/08/GalaxyNote7_KeyVisual_2-810x298_c.jpg", product_id: 27},
  {url: "https://www1-lw.xda-cdn.com/files/2016/08/GalaxyNote7_KeyVisual_2-810x298_c.jpg", product_id: 4},
  {url: "https://www1-lw.xda-cdn.com/files/2016/08/GalaxyNote7_KeyVisual_2-810x298_c.jpg", product_id: 3},
  {url: "https://www1-lw.xda-cdn.com/files/2016/08/GalaxyNote7_KeyVisual_2-810x298_c.jpg", product_id: 2},
  {url: "https://www1-lw.xda-cdn.com/files/2016/08/GalaxyNote7_KeyVisual_2-810x298_c.jpg", product_id: 27},
  {url: "http://cdn1.knowyourmobile.com/sites/knowyourmobilecom/files/styles/gallery_wide/public/2016/08/galaxy-note7_curve_phone.jpg?itok=ZpZPFEDX", product_id: 27},
  {url: " https://nieuwemobiel.s3.amazonaws.com/2015224-samsung-galaxy-note5-s6edgeplus-56bc6ebfefb7e.jpg", product_id: 27}
])
Product.create!([
  {name: "Blaze Tie", price: 50000.0, description: "Look at this one", state: nil, supplier_id: 1},
  {name: "Zeda Tie", price: 5000.0, description: "This is what the African Print mean", state: nil, supplier_id: 1},
  {name: "Wettie Tie", price: 5500.0, description: "This the wet season Kitenge tie", state: nil, supplier_id: 1},
  {name: "Groomie Pack", price: 25500.0, description: "Groomie Pack in a box is the deal of January.", state: nil, supplier_id: 1},
  {name: "Note 7", price: 750000.0, description: "Look at this beauty from Korea, how did they burst on chargers?", state: nil, supplier_id: 1}
])
Supplier.create!([
  {name: "Angelo", email: "angelo.c@him.rw", phone: "014752148"},
  {name: "Sando", email: "sando.s@her.rw", phone: "016542148"}
])
User.create!([
  {username: nil, email: "dodo@gmail.com", password_digest: "$2a$10$UsOnAz7q7Tyd3vXnoB8ozuBy7QYZ4rx.2sGwzvNC0TFMfN2IzMr32"}
])
