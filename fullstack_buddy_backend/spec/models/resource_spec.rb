require 'rails_helper'

RSpec.describe Resource, type: :model do
  context 'DB Columns' do
    {
      title: :string,
      description: :string,
      url: :string,
      image: :string,
      liked: :boolean
    }.each do |attr, type|
      it "should have column of #{attr}" do
        is_expected.to have_db_column(attr).of_type type
      end
    end
  end
  describe 'validations' do
  end
  describe 'has_many associations' do
    it {should have_many :user_resources}
    it {should have_many :tags}
    it {should have_many :technologies}

    xit {should have_many :users}

  end
end
