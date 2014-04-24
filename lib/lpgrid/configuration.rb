module Lpgrid
  class Configuration

    def file_path
      Lpgrid.root.join('config.yaml')
    end

    def options
      @options ||= YAML.load_file(file_path)
    end

    def csv
      options.fetch('csv_path')
    end
  end
end
