require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "returns a new user object" do; end
    it "validates the email argument" do; end
  end

  describe "#destroy" do
    it "touches the destroyed_at flag" do; end

    context "when destroyed succesfully" do
      it "returns true" do; end
    end

    context "when destroyed unsuccesfully" do
      it "returns false" do; end
    end
  end
end
