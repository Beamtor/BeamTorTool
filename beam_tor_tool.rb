module BeamTorTool
  module Extension
    def self.activate
      puts "BeamTorTool extension loaded"
    end
  end
end

BeamTorTool::Extension.activate
