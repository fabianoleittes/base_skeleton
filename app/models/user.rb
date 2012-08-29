class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  before_save :encrypt_password

# Temporary
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
