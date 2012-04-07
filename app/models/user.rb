class User < ActiveRecord::Base
  table_name = :users
  primary_key = :user_id

  attr_accessible :user_login, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create

  # Перегруженный метод из SecurePassword
  # Аутентификация - сравнивает хэш от введенного пароля и хэш из базы
  def authenticate(unencrypted_password)
    if BCrypt::Password.new(password_digest.strip) == unencrypted_password
      self
    else
      false
    end
  end
end
