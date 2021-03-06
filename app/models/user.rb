class User < ActiveRecord::Base
  # enum role: [:user, :vip, :admin]
  # after_initialize  :set_default_role, if => :new_record?
  # def set_default_role
  #   self.role ||= :user
  # end
  has_many :contacts
  has_many :activities, through: :contacts
  has_many :questions
  has_secure_password

  before_save :default_values
  def default_values
    self.role ||= 1
  end
end
