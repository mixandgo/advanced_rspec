require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "can be called 2 times" do
      expect(subject).to receive(:new).exactly(2).times.and_return(1, 2)
      puts subject.new(:new)
      puts subject.new(:new)
    end
  end
end
