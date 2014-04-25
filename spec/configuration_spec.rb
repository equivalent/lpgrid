require 'spec_helper'

describe Lpgrid::Configuration do
  let(:configuration) { described_class.new }

  describe '#file_path' do
    before { Lpgrid::Configuration.any_instance.unstub(:file_path) }
    it do
      configuration.file_path.to_s.should eq File.
        expand_path '../../config.yml', __FILE__
    end
  end
end
