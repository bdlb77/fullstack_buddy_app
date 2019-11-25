class Tag < ApplicationRecord
  belongs_to :resource
  belongs_to :technology

  validates :name, presence: true
end
