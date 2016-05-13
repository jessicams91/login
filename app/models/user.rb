class User < ActiveRecord::Base
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true

  def self.authenticate?(user, password)
    user && user.password == password
  end
end
