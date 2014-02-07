class Contact < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
  	validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
	validates :comment, presence: true
	
	CONTACTME = "If you're interested, <a href='/contacts/new'>please contact me</a>".html_safe
end
