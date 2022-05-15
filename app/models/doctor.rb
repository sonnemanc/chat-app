class Doctor < ApplicationRecord
  include Subscribable
  has_secure_password

  validates :first_name, :last_name, :email, :password, presence: true
  validates :password, length: { in: 6..20 }
  validates :email, uniqueness: true

  def receive_token
    #this class will be able to receive a token
  end

end
