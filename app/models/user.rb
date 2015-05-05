class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
	has_secure_password

	has_many :subscriptions
	has_many :groups, through: :subscriptions, as: :member
	has_many :created_groups, foreign_key: "creator_id", class_name: "Group", dependent: :destroy

  validates :name, :email, presence: true
  validates :password, length: { minimum: 8 }
end
