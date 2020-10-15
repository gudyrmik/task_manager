require 'rails_helper'

RSpec.describe User, type: :model do

  it { should have_many(:projects).dependent(:destroy) }
  it { should have_many(:tasks).dependent(:destroy) }
  it { should have_many(:tags).dependent(:destroy) }

end
