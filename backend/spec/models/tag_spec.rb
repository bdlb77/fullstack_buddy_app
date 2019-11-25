require 'rails_helper'

RSpec.describe Tag, type: :model do

  describe 'DB Columns' do 
    it {should have_db_column(:name).of_type :string}
  end
  describe 'validations' do
    it {should validate_presence_of :name}

  end

  describe 'belongs_to associations' do
    it { should belong_to :resource}
    it { should belong_to :technology}
  end
end
