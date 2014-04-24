module Lpgrid
  class Grid

    def parse_position(position)
      position.split(//)
    end

    def fetch(position)
      col, row = parse_position(position)
      grid[row.to_i].fetch(col.downcase.to_sym)
    end

    def grid
      @grid ||= CSV.table(Lpgrid.config.csv)
    end

  end
end
