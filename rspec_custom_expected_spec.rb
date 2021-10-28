require "rspec"

RSpec::Matchers.define :be_older_than do |expected|
  match { |user| user.age > expected }

  failure_message do |user|
    "expected #{user.name} to be older than #{expected}."
  end

  failure_message_when_negated do |user|
    "expected #{user.name} to be younger than #{expected}."
  end
end

RSpec.describe "User" do
  subject { double("User", name: "John", age: 20) }
  it { is_expected.to_not be_older_than(20) }
end
