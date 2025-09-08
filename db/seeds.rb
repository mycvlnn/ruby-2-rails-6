# Xóa dữ liệu cũ (cho dễ chạy thử nhiều lần)
Account.delete_all
Supplier.delete_all

# Tạo suppliers
suppliers = Supplier.create!([
  { name: "ACME Corp" },
  { name: "Global Supplies" },
  { name: "Tech World" }
])

# Tạo accounts cho mỗi supplier
suppliers.each_with_index do |supplier, i|
  supplier.create_account!(
    account_number: "ACC-#{1000 + i}"
  )
end

puts "Seeded #{Supplier.count} suppliers and #{Account.count} accounts"
