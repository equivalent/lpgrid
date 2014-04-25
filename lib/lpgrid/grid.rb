module Lpgrid
  class Grid
    attr_reader :position

    def self.grid
      @grid ||= CSV.table(Lpgrid.config.csv)
    end

    def initialize(position)
      @position = position
    end

    def fetch
      parse_position
      self.class.grid[@row.to_i].fetch(@col.downcase.to_sym)
    end

    private

    def parse_position
      @col, @row = position.split(//)
    end
  end
end
