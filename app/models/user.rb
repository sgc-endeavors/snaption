class User < ActiveRecord::Base
  has_secure_password
  before_validation :downcase_email

  has_many :media

  private

  def downcase_email
    self.email.downcase
  end


end