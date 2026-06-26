module BeamTorTool
  module Services
    class BeamService
      def create_sample_beam
        Models::Beam.new
      end
    end
  end
end
