require 'optparse'

module Localizator
  class Options
    attr_reader :input, :output, :default, :locales, :key

    def initialize(args)
      OptionParser.new do |parser|
        parser.on("-i", "--input [PATH]") do |input|
          @input = input
        end

        parser.on("-o", "--output [PATH]") do |output|
          @output = output
        end

        parser.on("-d", "--default [NAME]") do |default|
          @default= default
        end

        parser.on("-l", "--locales [ARRAY]") do |locales|
          @locales = locales.split(',')
        end

        parser.on("-k", "--key [NAME]") do |key|
          @key = key
        end
      end.parse!
    end
  end
end
