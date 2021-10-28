require "rspec"

RSpec.describe "Output" do
  context "on stdout" do
    subject { Proc.new { puts "foo" } }
    it { is_expected.to output("foo\n").to_stdout }
  end

  context "on stderr" do
    subject { Proc.new { $stderr.puts "foo" } }
    it { is_expected.to output("foo\n").to_stderr }
  end
end
