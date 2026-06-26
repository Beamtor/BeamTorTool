# frozen_string_literal: true

require_relative 'version'
require_relative 'constants'

module BeamTor

  module Loader

    def self.load
      puts "#{EXTENSION_NAME} v#{VERSION} loaded."
    end

  end

end

BeamTor::Loader.load