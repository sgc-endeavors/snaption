class User < ActiveRecord::Base
  has_secure_password

  before_validation :downcase_email



  private

  def downcase_email
    self.email.downcase
  end


end