require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "can be called with a partial array" do
      expect(subject).to receive(:new).with(array_including(5, 2))
      subject.new([1, 5, 3, 2])
    end
  end
end
