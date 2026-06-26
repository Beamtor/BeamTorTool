# frozen_string_literal: true

require 'sketchup.rb'
require 'extensions.rb'

unless file_loaded?(__FILE__)

  extension = SketchupExtension.new(
    'Beam Tor Tool',
    'BeamTorTool/src/beam_tor/loader'
  )

  extension.description = 'Beam Tor Tool for Reinforced Concrete Modeling'
  extension.version     = '0.0.1'
  extension.creator     = 'BeamTor'

  Sketchup.register_extension(extension, true)

  file_loaded(__FILE__)

end