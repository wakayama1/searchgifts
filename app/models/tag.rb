class Tag < ApplicationRecord
    has_many :present_tag_relations, dependent: :destroy
    has_many :presents, through: :present_tag_relations, dependent: :destroy
end
