# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = User.find_or_initialize_by(name: 'admin',email: 'admin@gmail.com', is_admin: true)
a.password = 'admin123456'
a.save

product_category = ProductCategory.find_or_create_by(title: "server", sorting: 1)

9.times do
  product_category.products.create(name: "Special title treatment", number: 10, description: "With supporting text below as a natural lead-in to additional content.", on_shelf: true)
end