require "rspec"

class User
  def foo = "bar"
end

RSpec.describe "User" do
  describe ".find_by_id" do
    it "returns something different" do
      allow_any_instance_of(User).to receive(:foo).and_return(1)
      expect_any_instance_of(User).to receive(:foo).once
      expect(User.new.foo).to eq(1)
    end
  end
end

