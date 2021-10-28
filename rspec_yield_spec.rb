require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "yields abc" do
      expect(subject).to receive(:new).and_yield("abc")
      subject.new { |x| puts "--- Yielded: #{x}" }
    end
  end
end
