require "rspec"

class User
  def to_h = { foo: 1 }
end

RSpec.describe "Predicate matchers" do
  subject { User.new.to_h }
  it { is_expected.to have_key(:foo) }
end
