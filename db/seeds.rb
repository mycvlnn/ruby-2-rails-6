# Authors
author1 = Author.create!(name: "J.K. Rowling", bio: "Author of Harry Potter")
author2 = Author.create!(name: "George R.R. Martin", bio: "Author of Game of Thrones")

# Books
book1 = Book.create!(title: "Harry Potter", price: 10.5, author: author1)
book2 = Book.create!(title: "Game of Thrones", price: 15.0, author: author2)

# Customers
customer1 = Customer.create!(name: "Alice", email: "alice@example.com")
customer2 = Customer.create!(name: "Bob", email: "bob@example.com")

# Orders
Order.create!(customer: customer1, book: book1, quantity: 2)
Order.create!(customer: customer2, book: book2, quantity: 1)
