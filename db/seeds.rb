User.destroy_all

User.create!(email: "admin@admin.com", password: "123123", name: "Admin", admin: true)
