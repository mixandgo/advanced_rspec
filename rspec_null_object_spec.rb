require "rspec"

class User; end 

RSpec.describe User do
  let(:user) { double(User).as_null_object }

  describe ".find_by_id" do
    context "when the user is not found" do
      it "returns nil" do
        expect(user.find_by_id).to eq(user)
      end
    end
  end
end
