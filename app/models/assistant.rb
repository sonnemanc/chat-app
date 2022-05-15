class Assistant < ApplicationRecord
  include Subscribable
  has_secure_password

  validates :first_name, :last_name, :email, :password, presence: true
  validates :password, length: { in: 6..20 }
  validates :email, uniqueness: true

  def send_token
    #instances of this class will be able to send a token to the other users
  end


end
