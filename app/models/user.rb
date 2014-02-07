require 'bcrypt'
class User
  include Mongoid::Document
  field :username, type: String
  field :hashed_password, type: String

  def password=(arg)
  	salt = BCrypt::Engine.generate_salt
  	self.hashed_password = 
  		BCrypt::Engine.hash_secret arg, salt
  end

  def authenticates_with_password?(pwd)
  	BCrypt::Password.new(hashed_password) == pwd
  end
end
