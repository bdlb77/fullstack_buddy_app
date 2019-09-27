require 'rails_helper'

RSpec.describe Project, type: :model do
  context 'DB Columns' do
    {
      title: :string,
      description: :string,
      personal_completed: :boolean,
      personal_github_repo_url: :string,
      personal_sharable: :boolean,
      type: :string,
      template_id: :integer
    }.each do |attr, type|
      it "should have column of #{attr}" do
        is_expected.to have_db_column(attr).of_type type
      end
    end
  end
  context 'Personal Project' do 
    before  do
      @template = FactoryBot.create(:template, template_id: nil)
      @project = FactoryBot.create(:personal_project, template: @template)
      @user = FactoryBot.create(:user)
    end
    
    describe 'validations' do
      it "should be a type of Personal Project." do 
        expect(@project.class).to eq(PersonalProject)
      end

      %i[title description].each do |column|
        it "should have presence of #{column}" do
          is_expected.to validate_presence_of column
        end
      end

      %i[personal_completed personal_sharable].each do |column|
        it "should either be true/false for #{column}" do
          is_expected.to validate_inclusion_of(column).in_array([true, false])
        end
      end
    end

    describe 'Has Many Associations' do 
      
      %i[project_technologies technologies user_projects users steps features].each do |assoc|
        it "should have association of has_many for #{assoc}" do
          expect(@project).to have_many assoc
        end
      end
      it 'should destroy all the project_technologies and user_projects if personal project is deleted' do
        @project2 = FactoryBot.create(:personal_project, template: @template)
        @technology = Technology.create(name: 'Ruby')
        @project_technology = ProjectTechnology.create(project: @project2, technology: @technology)
        UserProject.create(project: @project2, user: @user)
        @project2.destroy
        expect(ProjectTechnology.all).to eq([])
        expect(UserProject.all).to eq([])
      end

    end

    describe 'Belongs To Associations' do
      it 'should have assocation of belongs_to for Template' do
        expect(@project).to belong_to :template
      end
    end
  end

  context 'Template' do 
    before do 
      @template = FactoryBot.create(:template, template_id: nil)
      @project = FactoryBot.create(:personal_project, template: @template)
      @project2 = FactoryBot.create(:personal_project, template: @template)
      @user = FactoryBot.create(:user)
    end

    describe 'validations' do
      it 'should have unique title' do
        should validate_uniqueness_of(:title)
      end
    end

    describe 'has_many associations' do
      it 'should have many projects' do
        expect(@template).to have_many(:projects)
      end
    end
  end
end
