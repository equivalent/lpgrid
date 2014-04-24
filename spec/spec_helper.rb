require 'lpgrid'
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'

  config.before :each do
    Lpgrid::Configuration.any_instance.stub(:file_path).
      and_return(Lpgrid.root.join('spec', 'config.yaml'))
  end
end
