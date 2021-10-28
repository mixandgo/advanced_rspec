require "rspec"

class User; end

RSpec.describe "User" do
  let(:vuser) { class_double("User", find_by_id: nil) }

  describe ".find_by_id" do
    context "when the user is not found" do
      it "returns nil" do
        expect(vuser.find_by_id).to eq(nil)
      end
    end
  end
end
