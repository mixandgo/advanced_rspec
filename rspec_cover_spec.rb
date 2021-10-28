require "rspec"

RSpec.describe "Range" do
  subject { 1..10 }
  it { is_expected.to cover(3) }
end
