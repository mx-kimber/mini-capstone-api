User.create!([
  {name: "User", email: "user@test.com", password_digest: "$2a$12$N5TGfniDIfddEvck4h6/He8KJUiGBkvRgrDg8BK5RT9OGV2TWjuoO", admin: false},
  {name: "Admin", email: "admin@test.com", password_digest: "$2a$12$PDvfS1pvVDfJjUBKd79Tpu4mK3YdEY9k8YS2aBj.BEuck4cMZmsxy", admin: true}
])
Supplier.create!([
  {name: "TripleTech", email: "tripletech@tech.com", phone_number: "555-555-5623"},
  {name: "New-Gen", email: "newgen@gen.com", phone_number: "555-555-3461"},
  {name: "OptTech Designs", email: "opt_tech@designs.com", phone_number: "555-555-3579"},
  {name: "Nike-X", email: "newnike@nike.come", phone_number: "555-555-1735"},
  {name: "Synthwear", email: "synthwear@synth.com", phone_number: "555-556-2401"}
])
Product.create!([
  {name: "JackrunnerZ", price: "6000.0", description: "Stylish, lightweight, water/sludge resistant, accelerator module with control", quantity: 11, supplier_id: 4},
  {name: "ThermJac Jacket", price: "10000.0", description: "Therm-Invis Jacket, formable to any size, mini-jack port, HueShift, Sec-ACCEL & Sec-URE chip", quantity: 7, supplier_id: 2},
  {name: "HueShift Pants", price: "18000.0", description: "Stylish, integrated f6 chip, chameleon and pattern modes, formable to any size, mini-jack RGB port, HueShift v5", quantity: 9, supplier_id: 5},
  {name: "Opt-Tech Elite 5", price: "80000.0", description: "Optical enhancements with V5 software, thermal upgrade, mini-jack retracer port, HueShift, Sec-ACCEL enhancement", quantity: 2, supplier_id: 3},
  {name: "Hov-R Flight Boots", price: "156000.0", description: "A pair of black and chrome thruster boots, lightweight frames, water/sludge resistant, g7X-flight chip, accelerator module V", quantity: 5, supplier_id: 1},
  {name: "StealthSuit", price: "200000.0", description: "Breathable, formable to any size, easy to program, H3 hardware, mini-jack port, Sec-URE Chip", quantity: 1, supplier_id: 1}
])
Image.create!([
  {product_id: 3, url: "https://m.media-amazon.com/images/I/812+BMs97FL.jpg"},
  {product_id: 3, url: "https://cdn.thisiswhyimbroke.com/thumb/holographic-tracksuit_400x333.jpg"},
  {product_id: 6, url: "https://cdn.shopify.com/s/files/1/0593/9635/8337/products/il_fullxfull.4254004489_3mno_1800x1800.jpg?v=1664462377"},
  {product_id: 6, url: "https://cdn.shopify.com/s/files/1/0593/9635/8337/products/il_fullxfull.4203082890_aygo_1800x1800.jpg?v=1664368763"},
  {product_id: 5, url: "https://i.pinimg.com/originals/d3/31/07/d3310782d54099197eda510b9d8351a2.jpg"},
  {product_id: 5, url: "https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2F3821c0f6-bd9d-4108-8529-056ef571760d_1000x562.jpeg"},
  {product_id: 1, url: "https://cdn.thisiswhyimbroke.com/thumb/back-to-the-future-shoes_400x333.jpg"},
  {product_id: 1, url: "https://i.pinimg.com/736x/00/4e/cd/004ecd5f1cb05ea6a67208ca04779507--gifts.jpg"},
  {product_id: 2, url: "https://media.techeblog.com/images/vollebak-thermal-camouflage-jacket-invisibility-cloak.jpg"},
  {product_id: 2, url: "https://s3.amazonaws.com/images.gearjunkie.com/uploads/2022/09/52370107467_f5f71679e0_k.jpg"},
  {product_id: 4, url: "https://www.venturacountylasik.com/wp-content/uploads/woman-with-a-bionic-eye.jpg"},
  {product_id: 4, url: "https://i.pcmag.com/imagery/articles/03XYSGe5uz7vZsNwXawTLLY-1..v1614045181.jpg"},
  {product_id: 4, url: "https://i.pinimg.com/originals/4d/f2/2d/4df22d0c37fa442364f64a457f622426.jpg"}
])
CategoryProduct.create!([
  {category_id: 3, product_id: 4}
])
Category.create!([
  {name: "Jackets"},
  {name: "Footwear"},
  {name: "Enhancements"},
  {name: "Pants"},
  {name: "Boosters"}
])
