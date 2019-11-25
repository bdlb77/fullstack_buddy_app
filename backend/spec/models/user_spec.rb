require 'rails_helper'

RSpec.describe User, type: :model do
  before do 
    subject { FactoryBot.create(:user) }
  end
  context 'DB columns' do 
    {
      email: :string,
      encrypted_password: :string,
      reset_password_token: :string,
      reset_password_sent_at: :datetime,
      remember_created_at: :datetime,
      github_handle: :string,
      dev_username: :string,
      twitter_handle: :string,
      instagram_handle: :string,
      facebook_username: :string
    }.each do |attr, type|
      it "should be created with a column of #{attr}" do
        is_expected.to have_db_column(attr).of_type type
      end
    end
  end

  describe 'Validations' do 
    it { should validate_presence_of(:email) }
    xit 'should validate password' do 
      expect(subject.valid_password?('123451')).to be_truthy
    end
    describe 'github_handle' do
      it {should validate_presence_of(:github_handle)}
      it {should validate_uniqueness_of(:github_handle)}
    end
  end

  describe 'Associations' do
    %i[user_projects projects user_resources resources].each do |association|
      it "should have many #{association}" do
        is_expected.to have_many association
      end
    end
  end

end
