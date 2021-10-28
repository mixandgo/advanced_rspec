require "rspec"

RSpec.describe "Truthiness" do
  context "when nil" do
    subject { nil }
    it { is_expected.to be_falsy }
  end

  context "when false" do
    subject { false }
    it { is_expected.to be_falsy }
  end
end
