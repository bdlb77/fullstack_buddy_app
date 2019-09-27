require 'rails_helper'

RSpec.describe ProjectTechnology, type: :model do

  describe 'belongs_to associations' do
    # before do 
    #   @template = FactoryBot.create(:template)
    #   @project = FactoryBot.create(:personal_project)
    #   @tech = FactoryBot.create(:technology)
    # end

    it {should belong_to(:project)}
    it {should belong_to(:technology)}
  end
end
