class Group < ActiveRecord::Base
  has_many :subscriptions
  has_many :members, through: :subscriptions, source: :user
  belongs_to :owner, class_name: "User"
end
