module BeamTorTool
  module Models
    class Beam
      attr_reader :name

      def initialize(name: "Beam")
        @name = name
      end
    end
  end
end
