# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin_role = Role.where(role_name: :admin).first_or_create!
user_role = Role.where(role_name: :user).first_or_create!

admin = User.where(email: "loisaleghe@gmail.com").first_or_create!(password: "password", first_name: "Lois", last_name: "Aleghe", confirmed_at: Date.today )
admin.role_id = admin_role.id
admin.confirmed_at = Date.today
admin.save!
