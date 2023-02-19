class PresentTagRelation < ApplicationRecord
  belongs_to :present
  belongs_to :tag
end
