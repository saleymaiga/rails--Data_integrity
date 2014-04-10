class Product < ActiveRecord::Base
	belongs_to :card
	has_many :order_products
	has_many :orders, :through => :order_products

end
