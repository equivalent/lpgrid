require 'spec_helper'
describe Lpgrid::InputReader do
  let(:instance) { described_class.new }

  describe '.translate' do
    subject { described_class.translate(string) }

    context "when correct syntax of 1 element" do
      let(:string) { 'c3' }

      it 'should use Grid for calculating' do
        grid_instance = double :grid_instance
        Lpgrid::Grid.should_receive(:new).with('c3').once.and_return(grid_instance)
        grid_instance.should_receive(:fetch)
        subject
      end

      it 'should fetch correct values' do
        should eq '4'
      end
    end

    context "when correct syntax of 4 elements" do
      let(:string) { 'a1 B9 z9 d6' }

      it 'should use Grid for calculating' do
        Lpgrid::Grid.should_receive(:new).exactly(4).times.and_call_original
        subject
      end

      it 'should fetch correct values' do
        should eq 'b k u g'
      end
    end

    context 'when joint together' do
      let(:string) { 'a1b9z9d6' }
      it 'should fetch correct values' do
        expect { subject } .to raise_error Lpgrid::InputReader::IncorectInputFormat
      end
    end

    context 'when rows out of scope' do
      let(:string) { 'b2 a10 c3' }
      it 'should fetch correct values' do
        expect { subject } .to raise_error Lpgrid::InputReader::IncorectInputFormat
      end
    end
  end
end
