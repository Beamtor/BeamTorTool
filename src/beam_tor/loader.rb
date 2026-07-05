# frozen_string_literal: true

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