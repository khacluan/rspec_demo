require 'spec_helper'

describe List do
  it { should have_many(:books)}

  it { should validate_presence_of(:name) }

  context 'when the book has published' do
    it 'returns true value' do

    end
  end

  context 'when the book has not publish' do
    it 'returns false value' do

    end
  end
end
