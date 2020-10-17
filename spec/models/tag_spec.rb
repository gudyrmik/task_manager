require 'rails_helper'

RSpec.describe Tag, type: :model do

  it { should belong_to :user }
  it { should have_many(:task_tags) }
  it { should have_many(:tasks).dependent(:destroy) }

  it { should validate_presence_of(:title) }

end
