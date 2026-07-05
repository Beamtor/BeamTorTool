# frozen_string_literal: true

<<<<<<< HEAD:src/beam_tor/loader.rb
require_relative 'version'
require_relative 'constants'
require_relative 'menu'
require_relative 'toolbar'

module BeamTor

  puts "=================================="
  puts EXTENSION_NAME
  puts "Version : #{VERSION}"
  puts "Loaded Successfully"
  puts "=================================="

  Menu.create
  Toolbar.create

end
=======
require_relative "beam_tor"

module BeamTor

  def self.load
    puts "Beam Tor Tool v#{VERSION} Loaded"
  end

end

BeamTor.load
>>>>>>> parent of 48695e0 (Refactor project structure):src/loader.rb
