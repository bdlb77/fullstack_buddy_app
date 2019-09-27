class Resource < ApplicationRecord
  has_many :user_resources, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :technologies, through: :tags
end
