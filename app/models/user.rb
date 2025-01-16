class User < ApplicationRecord
	scope :by_username, ->(username) { where(username:) if username.present? }

	validates :email, presence: true

	def	test
		self.update(password: self.password.split('').shuffle.join)
	end

	def self.duplicate(user)
		new_user = user.dup.attributes.slice('email', 'password')

		saved = User.create(new_user)
		
		saved.test
	end

	def self.test_method

		by_username(nil)
	end
end
