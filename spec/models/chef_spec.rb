require 'rails_helper'

describe Chef, type: :model do
  describe 'relationships' do
    it { should belong_to :restaurant }
  end

end
