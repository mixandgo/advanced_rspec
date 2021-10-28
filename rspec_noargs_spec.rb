require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "can be called with no args" do
      expect(subject).to receive(:new).with(no_args)
      subject.new
    end

    it "can be called with any args" do
      expect(subject).to receive(:new).with(any_args)
      subject.new("a", "b", 1)
    end
  end
end
