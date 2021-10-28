require "rspec"

RSpec.describe "User" do
  let(:vuser) { instance_double("User") }

  describe ".find_by_id" do
    it "returns something different" do
      allow(vuser).to receive(:find_by_id).and_return(:john, :mary)
      expect(vuser.find_by_id).to eq(:john)
      expect(vuser.find_by_id).to eq(:mary)
      expect(vuser.find_by_id).to eq(:mary)
    end
  end
end

