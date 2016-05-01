class InterestGroup < ActiveRecord::Base
  belongs_to :user
  has_many :group_members
  has_many :members, through: :group_members, source: :user
end
