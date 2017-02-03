Image.create!([
  {url: "http://www.amooti.org/media/catalog/product/cache/1/image/1800x/040ec09b1e35df139433887a97daa66f/I/M/IMG_0515_2.JPG", product_id: nil},
  {url: "http://i-cdn.phonearena.com/images/articles/256479-image/iPhone-7-Jet-Black-on-iPhone-7-Plus-Black.jpg", product_id: 1}
])
Product.create!([
  {name: "Jake Tie", price: 3500.0, description: "This is the Jake tie", state: nil, supplier_id: 1},
  {name: "Blaze Tie", price: 50000.0, description: "Look at this one", state: nil, supplier_id: 1},
  {name: "Zeda Tie", price: 5000.0, description: "This is what the African Print mean", state: nil, supplier_id: 1},
  {name: "Wettie Tie", price: 5500.0, description: "This the wet season Kitenge tie", state: nil, supplier_id: 1},
  {name: "Groomie Pack", price: 25500.0, description: "Groomie Pack in a box is the deal of January.", state: nil, supplier_id: 1}
])
Supplier.create!([
  {name: "Angelo", email: "angelo.c@him.rw", phone: "014752148"},
  {name: "Sando", email: "sando.s@her.rw", phone: "016542148"}
])
User.create!([
  {username: nil, email: "dodo@gmail.com", password_digest: "$2a$10$UsOnAz7q7Tyd3vXnoB8ozuBy7QYZ4rx.2sGwzvNC0TFMfN2IzMr32"}
])
