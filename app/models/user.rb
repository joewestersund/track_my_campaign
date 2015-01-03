# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  remember_token  :string(255)
#  password_digest :string(255)
#  admin           :boolean
#  first_name      :string(255)
#  last_name       :string(255)
#

class User < ActiveRecord::Base
  has_secure_password #adds authenticate method, etc.
  has_many :user_permissions, dependent: :destroy
  has_many :database_instances, through: :user_permissions
  #has_and_belongs_to_many :communications, join_table: 'communications_staff_involved'

  before_save { |user| user.email.downcase! }
  before_create :create_remember_token

  validates :first_name, presence: true, length: { maximum: 50}
  validates :last_name, presence: true, length: { maximum: 50}
  validates :first_name, uniqueness: {scope: :last_name}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100}, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}

  validates :password, :presence =>true, :confirmation => true, :length => { :within => 6..40 }, :on => :create
  validates :password, :confirmation => true, :length => { :within => 6..40 }, :on => :update_password

  def admin?
    self.admin
  end

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def first_and_last_name
    "#{self.first_name} #{self.last_name}"
  end

  def email_address_with_name
    "#{self.first_name} #{self.last_name} <#{self.email}>"
  end


  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end

end
