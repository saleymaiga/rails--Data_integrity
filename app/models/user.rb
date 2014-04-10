class User < ActiveRecord::Base
	has_many :orders
	has_many :cards


	validates_confirmation_of :password
	validates :password, presence: true
	validates :fname, presence: true
	validates :lname, presence: true
	validates :email, presence: true, uniqueness: true
	validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_length_of :fname, maximum:10, message: "is too long (maximum is 10 characters)"
	validates_length_of :lname, maximum:10, message: "is too long (maximum is 10 characters)"

    

end
