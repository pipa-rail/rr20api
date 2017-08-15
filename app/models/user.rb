class User < ApplicationRecord
  before_validation do
    name_validation
    self.email.downcase!
    self.first_name.capitalize!
    self.last_name.capitalize!
  end
  validates :email, uniqueness: true, presence: true, email_format: {message: 'Wrong email provided'}
  validates :password, presence: true, length: {within: 6..40, message: 'Password should be between 6 and 40 symbols'}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :api_key, presence: false

  private
  def name_validation
    self.first_name = Faker::Name.first_name  unless self.first_name.present?
    self.last_name = Faker::Name.last_name unless self.last_name.present?
  end

  def full_name
    return self.first_name + self.last_name
  end

end
