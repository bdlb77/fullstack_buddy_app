class PersonalProject < Project
  belongs_to :template
  # has_many :project_technologies, foreign_key: "project_id", dependent: :destroy
  # has_many :technologies, through: :project_technologies
  # has_many :user_projects, foreign_key: "project_id", dependent: :destroy
  validates :personal_completed, inclusion: { in: [true, false]}
  validates :personal_sharable, inclusion: { in: [true, false]}
end