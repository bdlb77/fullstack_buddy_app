require 'rails_helper'

RSpec.describe Technology, type: :model do
  describe 'DB Columns' do 
    {
      name: :string,
      image: :string,
      technology_type: :integer
    }.each do |field, type|
      it {should have_db_column(field).of_type type}
    end
  end
  describe 'validations' do
    describe 'name' do 
      it {should validate_presence_of :name}
      it {should validate_uniqueness_of :name}

    end
    xit {should validate_presence_of :image}
  end


  describe 'has_many associations' do
    it {should have_many :project_technologies}
    it {should have_many :projects}
    it {should have_many :feature_technologies}
    it {should have_many :features}
    it {should have_many :tags}
    it {should have_many :resources}
  end

end
