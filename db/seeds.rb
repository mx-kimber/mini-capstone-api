User.create!([
  {name: "Aug", email: "aug@aug.com", password_digest: "$2a$12$5FSU1431Ovx85G.OnC2SgundLk2pAkEKD0EHgaSTljVQLMxI3aZEO", admin: false},
  {name: "Sarah", email: "saprice1@gmail.com", password_digest: "$2a$12$bOSrRA/63QHo5MlOhiXwaOXXKZ14EtLrJJLwfherHckYeKLlVxQwy", admin: false},
  {name: "Korben", email: "Dallas@gmail.com", password_digest: "$2a$12$uttAFJ/.s4DFwfQxcCoVC.HWB9iRp0Q/qWNd7.zDud9HjUCmn1XzS", admin: false},
  {name: "Ducky", email: "duckerson@duck.com", password_digest: "$2a$12$tWG19jNGd2QMBg7Xi6m.h.jb4PmT/aBMRI90KuUVkc8O/ytk8SHWu", admin: false}
])
Supplier.create!([
  {name: "Triple-Tech", email: "tripletech@tech.com", phone_number: "555-555-5623"},
  {name: "New-gen", email: "newgen@gen.com", phone_number: "555-555-3461"},
  {name: "OptTech Designs", email: "opt_tech@designs.com", phone_number: "555-555-3579"},
  {name: "Nike-X", email: "newnike@nike.come", phone_number: "555-555-1735"},
  {name: "Synthwear", email: "synthwear@synth.com", phone_number: "555-556-2401"}
])
Product.create!([
  {name: "JackrunnerZ", price: "6000.0", description: "Stylish, lightweight, water/sludge resistant, accelerator module with control", quantity: 11, supplier_id: 4},
  {name: "ThermJac Jacket", price: "10000.0", description: "Therm-Invis Jacket, formable to any size, mini-jack port, HueShift, Sec-ACCEL & Sec-URE chip", quantity: 7, supplier_id: 2},
  {name: "HueShift Pants", price: "18000.0", description: "Stylish, integrated f6 chip, chameleon and pattern modes, formable to any size, mini-jack RGB port, HueShift v5", quantity: 9, supplier_id: 3},
  {name: "Opt-Tech Elite 5", price: "80000.0", description: "Optical enhancements with V5 software, thermal upgrade, mini-jack retracer port, HueShift, Sec-ACCEL enhancement", quantity: 2, supplier_id: 1},
  {name: "Hov-R Flight Boots", price: "156000.0", description: "A pair of black and chrome thruster boots, lightweight frames, water/sludge resistant, g7X-flight chip, accelerator module V", quantity: 5, supplier_id: 2},
  {name: "StealthSuit", price: "200000.0", description: "Breathable, formable to any size, easy to program, H3 hardware, mini-jack port, Sec-URE Chip", quantity: 1, supplier_id: 3}
])
Image.create!([
  {product_id: 7, url: "https://m.media-amazon.com/images/I/812+BMs97FL.jpg"},
  {product_id: 7, url: "https://i.ebayimg.com/images/g/A28AAOSwVQhi2fwH/s-l1600.jpg"},
  {product_id: 7, url: "https://cdn.thisiswhyimbroke.com/thumb/holographic-tracksuit_400x333.jpg"},
  {product_id: 7, url: "https://cdn.shopify.com/s/files/1/0593/9635/8337/products/il_fullxfull.4415663843_16vv_1800x1800.jpg?v=1669038438"},
  {product_id: 9, url: "https://cdn.shopify.com/s/files/1/0593/9635/8337/products/il_fullxfull.4415663843_16vv_1800x1800.jpg?v=1669038438https://cdn.shopify.com/s/files/1/0593/9635/8337/products/il_fullxfull.4415663843_16vv_1800x1800.jpg?v=1669038438"},
  {product_id: 9, url: "https://cdn.shopify.com/s/files/1/0593/9635/8337/products/il_fullxfull.4254004489_3mno_1800x1800.jpg?v=1664462377"},
  {product_id: 9, url: "https://cdn.shopify.com/s/files/1/0593/9635/8337/products/il_fullxfull.4203082890_aygo_1800x1800.jpg?v=1664368763"},
  {product_id: 8, url: "https://i.pinimg.com/originals/d3/31/07/d3310782d54099197eda510b9d8351a2.jpg"},
  {product_id: 8, url: "https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2F3821c0f6-bd9d-4108-8529-056ef571760d_1000x562.jpeg"},
  {product_id: 8, url: "https://static.wikia.nocookie.net/cyberpunk/images/6/66/Q115_thrustersF.png/revision/latest/scale-to-width/360?cb=20211111101756"},
  {product_id: 27, url: "https://cdn.thisiswhyimbroke.com/thumb/back-to-the-future-shoes_400x333.jpg"},
  {product_id: 27, url: "https://cdn.thisiswhyimbroke.com/thumb/back-to-the-future-shoes_400x333.jpg"},
  {product_id: 27, url: "https://i.pinimg.com/736x/00/4e/cd/004ecd5f1cb05ea6a67208ca04779507--gifts.jpg"},
  {product_id: 13, url: "https://media.techeblog.com/images/vollebak-thermal-camouflage-jacket-invisibility-cloak.jpg"},
  {product_id: 13, url: "https://s3.amazonaws.com/images.gearjunkie.com/uploads/2022/09/52370107467_f5f71679e0_k.jpg"},
  {product_id: 12, url: "https://www.venturacountylasik.com/wp-content/uploads/woman-with-a-bionic-eye.jpg"},
  {product_id: 12, url: "https://i.pcmag.com/imagery/articles/03XYSGe5uz7vZsNwXawTLLY-1..v1614045181.jpg"},
  {product_id: 12, url: "https://i.pinimg.com/originals/4d/f2/2d/4df22d0c37fa442364f64a457f622426.jpg"}
])
CategoryProduct.create!([
  {category_id: 3, product_id: 27},
  {category_id: 2, product_id: 13},
  {category_id: 1, product_id: 13},
  {category_id: 1, product_id: 27}
])
Category.create!([
  {name: "jackets"},
  {name: "footwear"},
  {name: "All"}
])
CartedProduct.create!([
  {user_id: 1, quantity: 1, status: nil, product_id: nil, order_id: nil},
  {user_id: 3, quantity: 1, status: nil, product_id: nil, order_id: nil},
  {user_id: 3, quantity: 2, status: "carted", product_id: nil, order_id: nil},
  {user_id: 3, quantity: 2, status: "carted", product_id: nil, order_id: nil},
  {user_id: 3, quantity: 1, status: "carted", product_id: nil, order_id: nil},
  {user_id: 4, quantity: 3, status: "carted", product_id: nil, order_id: nil},
  {user_id: 4, quantity: nil, status: nil, product_id: nil, order_id: nil},
  {user_id: 4, quantity: nil, status: nil, product_id: nil, order_id: nil},
  {user_id: 4, quantity: 1, status: nil, product_id: nil, order_id: nil},
  {user_id: 1, quantity: 1, status: "carted", product_id: 8, order_id: nil},
  {user_id: 1, quantity: 1, status: "carted", product_id: 27, order_id: nil}
])

#needing to push
