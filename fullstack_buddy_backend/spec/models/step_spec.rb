require 'rails_helper'

RSpec.describe Step, type: :model do
  describe 'DB Columns' do 
    it {should have_db_column(:sequential_number).of_type :integer}
  end
  describe 'validations' do
    it {should validate_presence_of :sequential_number}
  end
  describe 'belongs_to associations' do
    it {should belong_to :project}
    it {should belong_to :feature}
  end
end
