class Step < ApplicationRecord
  belongs_to :project
  belongs_to :feature

  validates :sequential_number, presence: true
end
