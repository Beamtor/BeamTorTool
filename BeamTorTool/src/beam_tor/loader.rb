require 'sketchup.rb'
require_relative 'version'
require_relative 'constants'
require_relative 'menu'

module BeamTorTool
  unless file_loaded?(__FILE__)
    
    # เรียกฟังก์ชันสร้างเมนู
    Menu.create
    
    # พิมพ์สถานะลง Console
    puts "========================================"
    puts "#{PLUGIN_NAME} v#{VERSION} loaded successfully!"
    puts "Developer: #{PLUGIN_AUTHOR}"
    puts "Status: Milestone 2 - Menu Created"
    puts "========================================"
    
    file_loaded(__FILE__)
  end
end