require 'rails_helper'

RSpec.describe UserResource, type: :model do

  describe 'belongs_to associations' do
    it {should belong_to :resource}
    it {should belong_to :user}
  end
end
