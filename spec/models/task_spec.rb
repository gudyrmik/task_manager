require 'rails_helper'

RSpec.describe Task, type: :model do

  it { should belong_to :user }
  it { should have_many(:task_tags) }
  it { should belong_to(:project).optional(:true) }
  it { should have_many(:tags).dependent(:destroy) }

end
