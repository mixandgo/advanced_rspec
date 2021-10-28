require "rspec"

class User
  def method = "x"
end

RSpec.describe User do
  describe ".method" do
    it "wrap the original response" do
      expect(subject).to receive(:method).and_wrap_original { "z" }
      expect(subject.method).to eq("z")
    end
  end
end
