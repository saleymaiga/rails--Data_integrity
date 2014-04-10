class Card < ActiveRecord::Base
	has_many :orders
	has_many :products
	belongs_to :user

end
