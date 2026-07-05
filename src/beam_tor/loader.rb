require 'sketchup.rb'
require_relative 'version'
require_relative 'constants'

module BeamTorTool
  unless file_loaded?(__FILE__)
    
    # พิมพ์ข้อความยืนยันลงใน Ruby Console เพื่อทดสอบว่าไฟล์โหลดสำเร็จ
    puts "========================================"
    puts "#{PLUGIN_NAME} v#{VERSION} loaded successfully!"
    puts "Developer: #{PLUGIN_AUTHOR}"
    puts "Status: Milestone 1 - Framework Loaded"
    puts "========================================"
    
    file_loaded(__FILE__)
  end
end