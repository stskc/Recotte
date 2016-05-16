require 'test_helper'

class RecoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @reco = Reco.where( 'id >= ?', rand(Reco.first.id..Reco.last.id) ).first
    @reco2 = Reco.where( 'id >= ?', rand(Reco.first.id..Reco.last.id) ).last
  end

  test "should be valid" do
    assert @reco.valid?
  end

  test "artist should be present" do
    @reco.artist = "a" * 51
    assert_not @reco.valid?
  end

  test "song should be present" do
    @reco.song = "a" * 51
    assert_not @reco.valid?
  end

  test "youtube should be present" do
    @reco.youtube = "a" * 12
    assert_not @reco.valid?
  end

end
