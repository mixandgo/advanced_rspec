require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "can be called with a duck" do
      Person = Struct.new(:name)
      expect(subject).to receive(:new).with(duck_type(:name))
      subject.new(Person.new)
    end
  end
end
