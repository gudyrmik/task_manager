require 'rails_helper'

RSpec.describe Project, type: :model do

  let!(:user) { create(:user) }
  let!(:project) { create(:project, user_id: user.id) }

  describe 'Associations' do
    it { should belong_to :user }
    it { should have_many(:tasks).dependent(:destroy) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:position) }
    it { should validate_numericality_of(:position).is_greater_than_or_equal_to(0) }
    it { should validate_uniqueness_of(:position) }
  end

end
