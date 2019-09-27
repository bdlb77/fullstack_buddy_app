class Solution < ApplicationRecord
  belongs_to :template
  validates :github_url, presence: true
end
