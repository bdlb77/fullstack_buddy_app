require 'rails_helper'

RSpec.describe Solution, type: :model do 
  context 'DB Columns' do
    it { is_expected.to have_db_column(:github_url).of_type :string }
    it { is_expected.to have_db_column(:template_id).of_type :integer }
  end
  describe 'validations' do
    it { should validate_presence_of :github_url }
  end
  describe 'belongs_to associations' do
    it {should belong_to :template}
  end
end
