class User < ApplicationRecord
  before_save   :downcase_email
  
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end

  private
    
    def downcase_email
      email.downcase!
    end
end
