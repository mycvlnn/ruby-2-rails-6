# Xoá dữ liệu cũ (cho dễ chạy nhiều lần)
Document.delete_all
Section.delete_all
Paragraph.delete_all

# Tạo dữ liệu mẫu
doc1 = Document.create!(name: "Document 1")
doc2 = Document.create!(name: "Document 2")
doc3 = Document.create!(name: "Document 3")

# Tạo sections
sec1 = Section.create!(name: "Section 1 of Doc 1", document: doc1)
sec2 = Section.create!(name: "Section 2 of Doc 1", document: doc1)
sec3 = Section.create!(name: "Section 1 of Doc 2", document: doc2)
sec4 = Section.create!(name: "Section 1 of Doc 3", document: doc3)

# Tạo paragraphs
Paragraph.create!(name: "Paragraph 1 of Section 1 of Doc 1", section: sec1)
Paragraph.create!(name: "Paragraph 2 of Section 1 of Doc 1", section: sec1)
Paragraph.create!(name: "Paragraph 1 of Section 2 of Doc 1", section: sec2)
Paragraph.create!(name: "Paragraph 1 of Section 1 of Doc 2", section: sec3)
Paragraph.create!(name: "Paragraph 1 of Section 1 of Doc 3", section: sec4)
Paragraph.create!(name: "Paragraph 2 of Section 1 of Doc 3", section: sec4)
Paragraph.create!(name: "Paragraph 3 of Section 1 of Doc 3", section: sec4)

puts "Seeded #{Document.count} documents, #{Section.count} sections, and #{Paragraph.count} paragraphs."
