require 'minitest/autorun'
require_relative '../src/services/beam_service'

class BeamServiceTest < Minitest::Test
  def test_create_sample_beam_returns_beam
    service = BeamTorTool::Services::BeamService.new
    beam = service.create_sample_beam

    assert_instance_of BeamTorTool::Models::Beam, beam
    assert_equal 'Beam', beam.name
  end
end
