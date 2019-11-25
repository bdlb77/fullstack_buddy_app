class Technology < ApplicationRecord
  has_many :project_technologies, dependent: :destroy
  has_many :projects, through: :project_technologies
  has_many :feature_technologies, dependent: :destroy
  has_many :features, through: :feature_technologies
  has_many :tags, dependent: :destroy
  has_many :resources, through: :tags
  validates :name, presence: true
  validates :name, uniqueness: true
end
