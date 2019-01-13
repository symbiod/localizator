require 'yaml'

module Localizator
  class CLI
    def initialize(args)
      @options = Options.new(args)
    end

    def call
      @options.locales.each do |locale|
        output_dir = @options.output + '/' + locale
        translation = Translation.new(default: @options.default, locale: locale)

        Dir.rmdir(output_dir) if Dir.exists?(output_dir)
        Dir.mkdir(output_dir)

        files.each do |file|
          input_path = @options.input + '/' + file
          output_path = output_dir + '/' + file
          yaml = translation.(input_path, @options.key).to_yaml
          File.write(output_path, yaml)
        end
      end
    end

    private

    def files
      Dir.new(@options.input).select do |locale|
        locale.end_with?('.yml')
      end
    end
  end
end


