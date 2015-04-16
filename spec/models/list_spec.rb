require 'spec_helper'

describe List do
  it { should have_many(:books)}

  it { should validate_presence_of(:title) }
end
