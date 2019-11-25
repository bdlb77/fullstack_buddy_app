require 'rails_helper'

RSpec.describe UserProject, type: :model do


  describe 'belongs_to associations' do
    before do 
      @template = FactoryBot.create(:template)
      @personal_project = FactoryBot.create(:personal_project, template: @template)
      @user = FactoryBot.create(:user)
    end
    
    describe 'project association' do
      it { should belong_to :project }
      it {should belong_to :user}
      it 'should only validate PersonalProject' do
        @user_project = UserProject.new(project: @personal_project, user: @user)
        @not_valid_project = UserProject.new(project: @template, user: @user)
        expect(@user_project).to be_valid
        expect(@not_valid_project).to_not be_valid
      end
    end
  end
end
