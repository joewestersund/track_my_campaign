# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

default_password = 'testing'
admin_user = User.create({first_name: 'Joe', last_name: 'Westersund', email: 'joe_westersund@hotmail.com', password: default_password, password_confirmation: default_password, admin: true})

user_iphi = User.create({first_name: 'Marisa', last_name: 'Jones', email: 'mjones@institutephi.org', password: default_password, password_confirmation: default_password })
user_ccpha = User.create({first_name: 'Kanat', last_name: 'Tibet', email: 'kt@publichealthadvocacy.org', password: default_password, password_confirmation: default_password })

dbi_iphi = Heal::DatabaseInstance.create({instance_name: 'IPHI-test'})
dbi_ccpha = Heal::DatabaseInstance.create({instance_name: 'CCPHA-test'})

UserPermission.create({database_instance: dbi_iphi, user: user_iphi})
UserPermission.create({database_instance: dbi_ccpha, user: user_ccpha})