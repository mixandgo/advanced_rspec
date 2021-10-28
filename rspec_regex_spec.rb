require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "can be called with regex" do
      expect(subject).to receive(:new).with(/abc/)
      subject.new("bcdabcef")
    end

    it "can be called with anything" do
      expect(subject).to receive(:new).with("a", anything)
      subject.new("a", Object.new)
    end
  end
end
