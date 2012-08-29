class Authenticator

  def self.authenticate(email, password, encryption_engine = BcryptAdapter)
    user = User.find_by_email(email)

    return unless user

    actual_hash = encryption_engine.encryptor(password, user.password_salt)

    return user if user.password_hash == actual_hash
  end
end