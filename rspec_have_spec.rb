require "rspec"

class User
  def abc? = true
  def has_abc? = false
end

RSpec.describe "Predicate matchers" do
  subject { User.new }
  it { is_expected.to be_abc }
  it { is_expected.not_to have_abc }
end
