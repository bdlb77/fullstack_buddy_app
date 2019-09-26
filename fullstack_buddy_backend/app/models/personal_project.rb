class PersonalProject < Project
  belongs_to :template
  has_many :project_technologies, dependent: :destroy
  has_many :technologies, through: :project_technologies

  has_many :user_projects, dependent: :destroy
end