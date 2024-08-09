User.destroy_all

User.create!(email: "admin@admin.com", password: "123123", name: "Admin", admin: true)

50.times do |i|
  User.create!(email: "teste#{i}@teste.com", password: "123123", name: "Teste #{i}")
end
