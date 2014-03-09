# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserPermission.destroy_all
DatabaseInstance.destroy_all
User.delete_all

DEFAULT_PASSWORD = 'testing'
admin_user = User.create({first_name: 'Joe', last_name: 'Westersund', email: 'joe_westersund@hotmail.com', password: DEFAULT_PASSWORD, password_confirmation: DEFAULT_PASSWORD, admin: true})

