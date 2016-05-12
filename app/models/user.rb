class User < ActiveRecord::Base
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true

  def self.authenticate(email, password)
  user = find_by_email(email)
    if user && user.password == password
      user
    else
      nil
    end
  end
end
