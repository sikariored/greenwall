# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# СОЗДАНИЕ РОЛЕЙ
Role.create( name: "Администратор" )
Role.create( name: "Пользователь" )

# СОЗДАНИЕ ОТДЕЛОВ
Department.create( name: "IT" )
Department.create( name: "SEO" )

# СОЗДАНИЕ АККАУНТА АДМИНИСТРАТОРА
Account.create( email: "admin@mail.ru", name: "Администратор", password: "123123", role_id: 1, department_id: 1 )
Account.create( email: "user@mail.ru", name: "Тестовый Пользователь", password: "123123", role_id: 2, department_id: 2 )
