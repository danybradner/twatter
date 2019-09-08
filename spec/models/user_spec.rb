require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    # let(:user1) { User.new(screen_name: non_unique_name ) }
    # ^ look up rspec "let" usage

    it 'ensures people have a screen name' do
      user = User.new(name: "hello", screen_name: nil)
      expect(user.save).to eq(false)
    end
  
    it 'ensures that screen name is unique' do
      user = User.new(name: "hello", screen_name: nil)
      expect(user.save).to be_falsey
    end
  
    it 'ensures people have a screen name (best)' do
      user = User.new(name: "hello", screen_name: nil)
      expect(user).to_not be_valid
    end

    it 'ensures that screen name is unique' do
      non_unique_name = 'hello'
      user1 = User.new(screen_name: non_unique_name )
      user1.save
      user2 = User.new(screen_name: non_unique_name )
      expect(user2).to_not be_valid
    end

      it "User Screen name can be 20 characters or less " do
        user = User.new( name: "hello", screen_name: 'a'* 20  )
        expect(user).to be_valid
      end

      it "User Screen name is no longer than 20 characters " do
        user = User.new( name: "hello", screen_name: 'a'* 21  )
        expect(user).to_not be_valid
      end
  
  end
end

#test for limitations