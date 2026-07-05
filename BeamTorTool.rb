require 'sketchup.rb'
require 'extensions.rb'

module BeamTorTool
  unless file_loaded?(__FILE__)
    
    loader_path = File.join(File.dirname(__FILE__), 'BeamTorTool', 'src', 'beam_tor', 'loader.rb')
    
    extension = SketchupExtension.new('Beam Tor Tool', loader_path)
    
    extension.description = 'RC Structure Detailing Tool for SketchUp (Beam, Column, Footing)'
    extension.version     = '0.0.1'
    extension.creator     = 'Adinan Chansaeng (Tor)'
    extension.copyright   = '2026'
    
    Sketchup.register_extension(extension, true)
    
    file_loaded(__FILE__)
  end
end