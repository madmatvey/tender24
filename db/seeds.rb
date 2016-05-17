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

if User.count > 0
  admin = User.find(1)
else
  admin = User.new(
      :email                 => "admin@24tender.ru",
      :password              => "24tender",
      :password_confirmation => "24tender",
      :first_name            => "EDIT! Admin Name",
      :last_name             => "EDIT! Last Name"
  )
  # admin.skip_confirmation!

end
admin.role = Role.find_by_name('admin')
admin.save!
