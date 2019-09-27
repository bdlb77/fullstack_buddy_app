require 'rails_helper'

RSpec.describe Tag, type: :model do

  describe 'DB Columns' do 
    it {should have_db_column(:sequential_number).of_type :integer}
  end
  describe 'validations' do

  end
  describe 'has_many associations' do

  end

  describe 'belongs_to associations' do
  end
end
