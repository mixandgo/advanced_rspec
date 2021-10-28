require "rspec"

module TestHelpers
  extend RSpec::Matchers::DSL

  matcher :be_an_adult do
    match { |user| user.age >= 18 }
    failure_message { |user| "expected #{user.name} to be older." }
    failure_message_when_negated { |user| "expected #{user.name} to be younger." }
  end
end

RSpec.describe "User" do
  include TestHelpers
  subject { double("User", name: "John", age: 20) }
  it { is_expected.to_not be_an_adult }
end
