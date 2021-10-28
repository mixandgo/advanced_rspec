require "rspec"

class CustomError < StandardError; end
class User; end

RSpec.describe User do
  describe ".new" do
    it "raises CustomError" do
      expect(subject).to receive(:new).and_raise(CustomError)
      begin
        subject.new
      rescue CustomError => e
        puts "--- Error is: #{e.inspect}"
        nil
      end
    end
  end
end
