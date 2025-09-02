# Tạo dữ liệu ngẫu nhiên cho year_published
Book.find_each do |book|
  random_year = rand(1900..2025) # Năm ngẫu nhiên từ 1900 đến hiện tại
  book.update!(year_published: random_year)
end
