class User < ActiveRecord::Base
	include BCrypt

	has_many :subscriptions
	has_many :groups, through: :subscriptions, as: :member
	has_many :created_groups, foreign_key: "creator_id", class_name: "Group", dependent: :destroy

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
