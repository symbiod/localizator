require 'google/cloud/translate'
require 'yaml'

module Localizator
  class Translation
    def initialize(default:, locale:)
      @default = default
      @locale = locale
      @translator = Google::Cloud::Translate.new(
        project_id: 'localizator-gem',
        credentials: Google::Cloud::Translate::Credentials.new('env.json')
      )
    end

    def call(path, key = nil)
      hash = YAML.load_file(path)
      iterate(key ? hash[key] : hash)
    end

    private

    def iterate(hash)
      hash.each do |key, value|
        if value.is_a? Hash
          iterate(value)
        else
          hash[key] = translate(value)
        end
      end
    end

    def translate(string)
     @translator.translate(string, to: @locale).text
    end
  end
end
