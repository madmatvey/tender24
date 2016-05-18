# Role.create(:name => :admin)     # main administrator
# Role.create(:name => :operator)  # оператор или модератор
# Role.create(:name => :supplier)  # поставщик
# Role.create(:name => :сustomer)  # заказчик
# Role.create(:name => :blocked)   # заблокированый
# Role.create(:name => :archived)  # из старой базы клиентов
# Role.create(:name => :registered)   # заблудившийся (зарегистрировался, но не выбрал не одну роль)
#
#
# if User.count > 0
#   admin = User.find(1)
# else
#   admin = User.new(
#       :email                 => "admin@24tender.ru",
#       :password              => "24tender",
#       :password_confirmation => "24tender",
#       :first_name            => "EDIT! Admin Name",
#       :last_name             => "EDIT! Last Name"
#   )
#
# end
#
# admin.roles << Role.find_by_name("admin")
# admin.save!
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
