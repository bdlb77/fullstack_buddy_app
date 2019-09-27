class Project < ApplicationRecord
  has_many :project_technologies, dependent: :destroy
  has_many :technologies, through: :project_technologies
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects
  has_many :steps, dependent: :destroy
  has_many :features, through: :steps


  validates :title, presence: true
  validates :description, presence: true
  # validates :type, inclusion: {in: %w(Template PersonalProject)} 
end
