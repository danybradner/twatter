require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it 'ensures people have a screen name' do
      user = User.new(name: "hello", screen_name: nil)
      expect(user.save).to eq(true)
    end
  
        end
  
  end
end

#ask for help on how to verify users
#test for limitations