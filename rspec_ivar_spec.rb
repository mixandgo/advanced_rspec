require "rspec"

class User
  def self.find_by_id(id) = where(id: id).first
end 

RSpec.describe User do
  describe ".find_by_id" do
    before do
      @ivar = User.find_by_id(1)
    end

    context "when the user is not found" do
      it "returns nil" do
        expect(@ival).to eq(nil)
      end
    end
  end
end

