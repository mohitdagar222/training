5.times do |p|
  Product.create(name: "product#{p}", price: rand(100..500))
end
