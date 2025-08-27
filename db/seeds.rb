# Clear old data (để tránh bị trùng khi chạy lại)
Order.delete_all
Book.delete_all
Author.delete_all
Customer.delete_all

# Authors
author1 = Author.create!(name: "J.K. Rowling", bio: "Author of Harry Potter")
author2 = Author.create!(name: "George R.R. Martin", bio: "Author of Game of Thrones")
author3 = Author.create!(name: "J.R.R. Tolkien", bio: "Author of The Lord of the Rings")
author4 = Author.create!(name: "Haruki Murakami", bio: "Japanese novelist")

# Books
book1 = Book.create!(title: "Harry Potter", price: 10.5, author: author1)
book2 = Book.create!(title: "Game of Thrones", price: 15.0, author: author2)
book3 = Book.create!(title: "The Hobbit", price: 12.0, author: author3)
book4 = Book.create!(title: "Kafka on the Shore", price: 14.0, author: author4)
book5 = Book.create!(title: "Norwegian Wood", price: 13.0, author: author4)

# Customers
customer1 = Customer.create!(name: "Alice", email: "alice@example.com")
customer2 = Customer.create!(name: "Bob", email: "bob@example.com")
customer3 = Customer.create!(name: "Charlie", email: "charlie@example.com")
customer4 = Customer.create!(name: "Diana", email: "diana@example.com")
customer5 = Customer.create!(name: "Eve", email: "eve@example.com")

# Orders
Order.create!(customer: customer1, book: book1, quantity: 2)
Order.create!(customer: customer2, book: book2, quantity: 1)
Order.create!(customer: customer3, book: book3, quantity: 3)
Order.create!(customer: customer4, book: book4, quantity: 1)
Order.create!(customer: customer5, book: book5, quantity: 2)
Order.create!(customer: customer1, book: book2, quantity: 1)
Order.create!(customer: customer2, book: book3, quantity: 2)
Order.create!(customer: customer3, book: book5, quantity: 1)
Order.create!(customer: customer4, book: book1, quantity: 4)
Order.create!(customer: customer5, book: book4, quantity: 2)
