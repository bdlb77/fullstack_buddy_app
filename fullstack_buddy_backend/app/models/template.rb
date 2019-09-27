class Template < Project
  has_many :projects, foreign_key: 'template_id'
  validates :title, uniqueness: true
end