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
Role.create( name: "Администратор" ) #1
Role.create( name: "Директор" ) #2
Role.create( name: "Руководитель отдела продаж" ) #3
Role.create( name: "Руководитель отдела IT" ) #4
Role.create( name: "Руководитель отдела SEO" ) #5
Role.create( name: "Пользователь" ) #6

# СОЗДАНИЕ ОТДЕЛОВ
Department.create( name: "Администрация" ) #1
Department.create( name: "IT отдел" ) #2
Department.create( name: "Отдел продаж" ) #3
Department.create( name: "SEO отдел" ) #4

# СОЗДАНИЕ АККАУНТА АДМИНИСТРАТОРА
Account.create( email: "admin@mail.ru", name: "Администратор", password: "123123", role_id: 1, department_id: 1 ) #1

# СОЗДАНИЕ ПРОЧИХ АККАУНТОВ
Account.create( email: "dir@mail.ru", name: "Иванов Директор", password: "123123", role_id: 2, department_id: 1 ) #2
Account.create( email: "rop@mail.ru", name: "Иванов Руководитель отдела продаж", password: "123123", role_id: 3, department_id: 3 ) #3
Account.create( email: "it@mail.ru", name: "Иванов Руководитель отдела IT", password: "123123", role_id: 4, department_id: 2 ) #4
Account.create( email: "seo@mail.ru", name: "Иванов Руководитель отдела SEO", password: "123123", role_id: 5, department_id: 4 ) #5
Account.create( email: "user@mail.ru", name: "Иванов Пользователь", password: "123123", role_id: 6, department_id: 3 )

# СОЗДАНИЕ ТЕСТОВЫХ ЗАПИСЕЙ
SecureRecord.create(login: "login1", password: "password1", resource: "resource1", account_id: 1) #1
SecureRecord.create(login: "login2", password: "password2", resource: "resource2", account_id: 1) #2
SecureRecord.create(login: "login3", password: "password3", resource: "resource3", account_id: 2) #3
SecureRecord.create(login: "login4", password: "password4", resource: "resource4", account_id: 2) #4
SecureRecord.create(login: "login5", password: "password5", resource: "resource5", account_id: 3) #5
SecureRecord.create(login: "login6", password: "password6", resource: "resource6", account_id: 3) #6
SecureRecord.create(login: "login7", password: "password7", resource: "resource7", account_id: 4) #7
SecureRecord.create(login: "login8", password: "password8", resource: "resource8", account_id: 4) #8
SecureRecord.create(login: "login9", password: "password9", resource: "resource9", account_id: 5) #9
SecureRecord.create(login: "login10", password: "password10", resource: "resource10", account_id: 5) #10
SecureRecord.create(login: "login11", password: "password11", resource: "resource11", account_id: 6) #11
SecureRecord.create(login: "login12", password: "password12", resource: "resource12", account_id: 6) #12

