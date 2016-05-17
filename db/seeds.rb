# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
 'strayed',    # заблудившийся (зарегистрировался, но не выбрал не одну роль)
 'archived',  # из старой базы клиентов
 'blocked',   # заблокированый
 'сustomer',  # заказчик
 'supplier',  # поставщик
 'operator',  # operator / moderator
 'admin'      # main administrator
].each do |role|
  Role.find_or_create_by({name: role})
end
