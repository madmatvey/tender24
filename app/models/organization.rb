class Organization < ActiveRecord::Base
	has_many :users
	has_many :procurements
end
