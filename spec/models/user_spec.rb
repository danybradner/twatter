require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it 'ensures people have a screen name' do
      user = User.new(name: "hello", screen_name: nil)
      expect(user.save).to eq(false)
    end
  
  end
end
