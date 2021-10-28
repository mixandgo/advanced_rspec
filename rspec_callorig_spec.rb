require "rspec"

class User
  def method = "x"
end

RSpec.describe User do
  describe ".method" do
    it "calls the original implementation" do
      expect(subject).to receive(:method).and_call_original
      expect(subject.method).to eq("x")
    end
  end
end
