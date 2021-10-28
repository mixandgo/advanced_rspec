require "rspec"

class User
  def add(a, b) = a + b
end

RSpec.describe User do
  describe ".add" do
    it "uses the original method implementation" do
      original = subject.method(:add)

      allow(subject).to receive(:add) do |a, b|
        original.call(a, b)
      end
      expect(subject.add(1, 2)).to eq(3)
    end
  end
end
