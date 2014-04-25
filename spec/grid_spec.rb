require 'spec_helper'
describe Lpgrid::Grid do
  let(:grid) { described_class.new(position) }

  describe '#fetch' do
    subject { grid.fetch }

    context "when A0" do
      let(:position) { 'a0' }
      it { should eq 'a' }
    end

    context "when Z9" do
      let(:position) { 'z9' }
      it { should eq 'u' }
    end

    context "when E3" do
      let(:position) { 'E3' }
      it { should eq 'c' }
    end
  end

  
end
#p Lpgrid::Grid
