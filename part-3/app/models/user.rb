class User < ActiveRecord::Base
  validates :email, :username, :password_hash, presence: true
  validates :email, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password_attempt)
    if self.password == password_attempt
      return self
    else
      return nil
    end
  end

end
