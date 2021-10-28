require "rspec"


class User
  def self.method
    string = nil
    # spawn two child threads
    thread1 = Thread.new { string = "foo" }
    thread2 = Thread.new { string = "bar" }

    # wait for the threads to finish
    [thread1, thread2].each(&:join)
    string
  end
end 

RSpec.describe User do
  describe ".method" do
    it "returns a new user object" do
      expect(User.method).to eq("foo")
    end
  end
end
