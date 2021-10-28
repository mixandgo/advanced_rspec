require "rspec"

class User
  def foo = "bar"
end

RSpec.describe "User" do
  describe ".foo" do
    it "returns 1" do
      allow_any_instance_of(User).to receive(:foo).and_return(1)
      expect_any_instance_of(User).to receive(:foo).once
      expect(User.new.foo).to eq(1)
    end
  end
end

