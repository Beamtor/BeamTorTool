module BeamTorTool
  module Utils
    module Helpers
      def self.titleize(value)
        value.to_s.split(/[_\s]+/).map(&:capitalize).join(" ")
      end
    end
  end
end
