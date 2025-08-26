# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Xóa dữ liệu cũ
Order.delete_all

# Tạo dữ liệu demo
Order.create!(status: "being_packed", total: 100, created_at: "2025-08-20")
Order.create!(status: "being_packed", total: 150, created_at: "2025-08-20")
Order.create!(status: "shipped", total: 250, created_at: "2025-08-21")
Order.create!(status: "shipped", total: 300, created_at: "2025-08-21")
Order.create!(status: "shipped", total: 500, created_at: "2025-08-22")

