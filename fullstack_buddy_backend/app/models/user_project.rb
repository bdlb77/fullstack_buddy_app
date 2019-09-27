class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validate :valid_project_type? 

  def valid_project_type?
    unless self.project.class == PersonalProject 
      errors.add(:project_id, "Must type of Personal Project to connect to User." )
    end
  end
end
