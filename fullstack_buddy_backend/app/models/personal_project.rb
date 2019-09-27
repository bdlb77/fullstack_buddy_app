class PersonalProject < Project
  belongs_to :template
  has_many :project_technologies, foreign_key: "project_id", dependent: :destroy
  has_many :user_projects, foreign_key: "project_id", dependent: :destroy
end