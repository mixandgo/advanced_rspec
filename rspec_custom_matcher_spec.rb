require "rspec"

RSpec::Matchers.define :be_an_adult do
  match { |user| user.age >= 18 }

  failure_message do |user|
    "expected #{user.name} to be older."
  end

  failure_message_when_negated do |user|
    "expected #{user.name} to be younger."
  end
end

RSpec.describe "User" do
  subject { double("User", name: "John", age: 20) }
  it { is_expected.to_not be_an_adult }
end
