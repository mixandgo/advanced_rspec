require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "can be called with numeric" do
      expect(subject).to receive(:new).with("a", kind_of(Numeric))
      subject.new("a", 2)
    end

    it "can be called with bools" do
      expect(subject).to receive(:new).with("a", boolean)
      subject.new("a", false)
    end
  end
end
