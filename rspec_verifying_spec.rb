require "rspec"

class User; end 

RSpec.describe User do
  let(:user) { double(User, find_by_id: nil) }
  let(:vuser) { instance_double(User, find_by_id: nil) }

  describe ".find_by_id" do
    context "when the user is not found" do
      it "returns nil" do
        expect(user.find_by_id).to eq(nil)
        expect(vuser.find_by_id).to eq(nil)
      end
    end
  end
end
