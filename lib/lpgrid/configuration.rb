module Lpgrid
  class Configuration

    def file_path
      Lpgrid.root.join('config.yml')
    end

    def csv
      return options['csv_path'] if options['csv_path']

      home_dot_grid = "#{ENV['HOME']}/.grid.csv"
      return home_dot_grid if File.exist?(home_dot_grid)

      home_grid = "#{ENV['HOME']}/grid.csv"
      return home_grid if File.exist?(home_grid)

      raise "You need to define grid path in project 'config.yml' or just move your grid to '~/.grid.csv'"
    end

    private

    def options
      @options ||= YAML.load_file(file_path)
    rescue Errno::ENOENT
      {}
    end
  end
end
