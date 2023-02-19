class Like < ApplicationRecord
  belongs_to :present
  belongs_to :user
  validates_uniqueness_of :present_id, scope: :user_id
end
