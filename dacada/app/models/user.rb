class User < ActiveRecord::Base
  has_secure_password
  has_many :purchases
  has_many :items, :through => :purchases

  validates :first_name, presence: { message: "First name must be entered"}
  validates :last_name, presence: { message: "Lirst name must be entered"}
  validates :city, presence: { message: "City must be entered"}
  validates :state, presence: { message: "State must be entered"}
  validates :street, presence: { message: "Street address must be entered"}
  validates :email, presence: { message: "Email must be entered"}
  validates :card_number, presence: { message: "Card number must be entered"}
  validates :password, presence: { message: "Password must be entered and must be at least 6 characters"}, length: {minimum: 6}, :on => :create
  validates :password_confirmation, presence: { message: "Passwords must match"}, :on => :create
end
