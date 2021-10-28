require "rspec"

class User
  def add(a, b) = a + b
end

RSpec.describe User do
  describe ".add" do
    it "receives arguments twice" do
      expect(subject).to receive(:add).once
      subject.add(1, 2)
      expect(subject).to receive(:add).at_least(:once)
      subject.add(1, 2)
      expect(subject).to receive(:add).at_most(:once)
      subject.add(1, 2)
    end
  end
end
