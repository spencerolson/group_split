class User < ActiveRecord::Base
  has_secure_password

  has_many :subscriptions
  has_many :groups, through: :subscriptions, as: :member
  has_many :owned_groups, foreign_key: "owner_id", class_name: "Group", dependent: :destroy

  validates :name, :email, presence: true
  validates :password, length: { minimum: 8 }
end
