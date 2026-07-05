module BeamTorTool
  module Commands
    class CreateBeamCommand
      def initialize(service = Services::BeamService.new)
        @service = service
      end

      def execute
        @service.create_sample_beam
      end
    end
  end
end
