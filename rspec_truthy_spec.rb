require "rspec"

RSpec.describe "Truthiness" do
  context "when String" do
    subject { "foo" }
    it { is_expected.to be_truthy }
  end

  context "when Object" do
    subject { Object.new }
    it { is_expected.to be_truthy }
  end

  context "when 0" do
    subject { 0 }
    it { is_expected.to be_truthy }
  end

  context "when Regex" do
    subject { /foo/ }
    it { is_expected.to be_truthy }
  end
end

