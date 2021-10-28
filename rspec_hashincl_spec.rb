require "rspec"

class User; end

RSpec.describe User do
  describe ".new" do
    it "nesting" do
      expect(subject).to receive(:new)
        .with(
          hash_including(
            a: 1,
            b: instance_of(String),
            c: /gex/,
            d: a_string_starting_with("J"),
            e: a_value > 30,
            f: be_within(0.1).of(1.3),
            g: satisfy { |x| /age/ }
          )
        )
      subject.new(
        a: 1,
        b: "str",
        c: "regex",
        d: "John",
        e: 50,
        f: 1.32, g: "courage"
      )
    end
  end
end
