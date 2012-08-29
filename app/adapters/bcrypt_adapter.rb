class BcryptAdapter

  def self.encryptor(password, password_salt)
    engine.hash_secret(password, password_salt)
  end

  def self.engine
    BCrypt::Engine
  end
end