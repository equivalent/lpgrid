module Lpgrid
  class InputReader
    IncorectInputFormat = Class.new(StandardError)

    attr_reader :string

    def self.translate(string)
      instance = new(string)
      instance.check_format
      instance.translate
    end

    def initialize(string)
      @string = string
    end

    def check_format
      if splitter.collect(&:length).select { |leng| leng !=2 } .any?
        raise IncorectInputFormat
      end
    end

    def translate
      splitter.collect do |element|
        Grid.new(element).fetch
      end.join(' ')
    end

    def splitter
      string.split(' ')
    end
  end
end
