require 'test_helper'

class RecoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @reco = Reco.new(artist: "CHERRY NADE 169", song: "o/x game", youtube: "JZrzIdROfb4", star: 0)
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
