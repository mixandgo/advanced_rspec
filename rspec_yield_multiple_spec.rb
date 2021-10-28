require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "yields multiple times" do
      expect(subject).to receive(:new).and_yield(1).and_yield(2)
      subject.new { |x| puts "--- Yielded: #{x}" }
    end
  end
end
