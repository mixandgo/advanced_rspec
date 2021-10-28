require "rspec"

class User
  def to_a = []
end

RSpec.describe "Predicate matchers" do
  subject { User.new.to_a }
  it { is_expected.to be_empty }
end
