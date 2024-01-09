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
Account.create( email: "admin@mail.ru", name: "Администратор", password: "123123", role_id: 1, department_id: 2, department_access: [1, 2, 3, 4] ) #1

# СОЗДАНИЕ ПРОЧИХ АККАУНТОВ
Account.create( email: "dir@mail.ru", name: "Дементьев Алексей", password: "123123", role_id: 2, department_id: 1 ) #2
Account.create( email: "rop@mail.ru", name: "Боштан Александр", password: "123123", role_id: 3, department_id: 3 ) #3
Account.create( email: "it@mail.ru", name: "Игорь Корнилов", password: "123123", role_id: 4, department_id: 2 ) #4
Account.create( email: "seo@mail.ru", name: "Мейлис Клычев", password: "123123", role_id: 5, department_id: 4 ) #5
Account.create( email: "user@mail.ru", name: "Андреев Андрей", password: "123123", role_id: 6, department_id: 3 ) #6

# СОЗДАНИЕ ТЕСТОВЫХ ЗАПИСЕЙ
SecureRecord.create(login: "user1", password: "Password123", resource: "google.com", account_id: 1, department_id: 1) #1
SecureRecord.create(login: "john.doe", password: "SecurePass!", resource: "facebook.com", account_id: 1, department_id: 1) #2

SecureRecord.create(login: "admin123", password: "12345678", resource: "twitter.com", account_id: 2, department_id: 1) #3
SecureRecord.create(login: "jane.smith", password: "MySecretPassword", resource: "instagram.com", account_id: 2, department_id: 1) #4

SecureRecord.create(login: "coolguy42", password: "P@ssw0rd", resource: "linkedin.com", account_id: 3, department_id: 3) #5
SecureRecord.create(login: "soccerfanatic", password: "LetMeIn2022", resource: "youtube.com", account_id: 3, department_id: 3) #6

SecureRecord.create(login: "codingwizard", password: "StrongPassword12", resource: "github.com", account_id: 4, department_id: 2) #7
SecureRecord.create(login: "booklover99", password: "ilovecoding", resource: "amazon.com", account_id: 4, department_id: 2) #8

SecureRecord.create(login: "techgeek", password: "Qwerty123", resource: "netflix.com", account_id: 5, department_id: 4) #9
SecureRecord.create(login: "sunshine22", password: "SuperSecurePass", resource: "reddit.com", account_id: 5, department_id: 4) #10

SecureRecord.create(login: "musiclover", password: "987654321", resource: "stackoverflow.com", account_id: 6, department_id: 3) #11
SecureRecord.create(login: "gamingpro", password: "ChangeMeNow!", resource: "medium.com", account_id: 6, department_id: 3) #12

SecureRecord.create(login: "admin123", password: "12345678", resource: "twitter.com", account_id: 1, department_id: 1) #13
SecureRecord.create(login: "jane.smith", password: "MySecretPassword", resource: "instagram.com", account_id: 1, department_id: 1) #14

# СОЗДАНИЕ ТЕСТОВЫХ ЗАМЕТОК
Note.create( title: "Заметка 1", content: "Содержание заметки 1", account_id: 1, department_id: 1 ) #1
Note.create( title: "Заметка 2", content: "Содержание заметки 2", account_id: 2, department_id: 1 ) #2
Note.create( title: "Заметка 3", content: "Содержание заметки 3", account_id: 3, department_id: 3 ) #3
Note.create( title: "Заметка 4", content: "Содержание заметки 4", account_id: 4, department_id: 2 ) #4
Note.create( title: "Заметка 5", content: "Содержание заметки 5", account_id: 5, department_id: 4 ) #5
Note.create( title: "Заметка 6", content: "Содержание заметки 6", account_id: 6, department_id: 3 ) #6
Note.create( title: "Заметка 7", content: "Содержание заметки 7", account_id: 1, department_id: 1 ) #7
Note.create( title: "Заметка 8", content: "Содержание заметки 8", account_id: 2, department_id: 1 ) #8
Note.create( title: "Заметка 9", content: "Содержание заметки 9", account_id: 3, department_id: 3 ) #9
Note.create( title: "Заметка 10", content: "Содержание заметки 10", account_id: 4, department_id: 2 ) #10
Note.create( title: "Заметка 11", content: "Содержание заметки 11", account_id: 5, department_id: 4 ) #11
Note.create( title: "Заметка 12", content: "Содержание заметки 12", account_id: 6, department_id: 3 ) #12
