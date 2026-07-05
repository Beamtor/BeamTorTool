require 'sketchup.rb'
require_relative 'version'
require_relative 'constants'
require_relative 'menu'
require_relative 'toolbar'

module BeamTorTool
  unless file_loaded?(__FILE__)
    
    Menu.create
    Toolbar.create
    
    puts "========================================"
    puts "#{PLUGIN_NAME} v#{VERSION} loaded successfully!"
    puts "Developer: #{PLUGIN_AUTHOR}"
    puts "Status: Milestone 3 - Toolbar Created"
    puts "========================================"
    
    file_loaded(__FILE__)
  end
end