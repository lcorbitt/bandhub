require "rails_helper"

RSpec.describe "User", type: :model do
  describe "after creation" do
    let(:user) { build :user }

    it "assigns a role of Member by default" do
      user.save
      expect(user.has_role? :member).to eq true
    end

    it "sends a confirmation email" do
      expect(user).to receive(:send_confirmation_instructions)
      user.save
    end
  end
end
