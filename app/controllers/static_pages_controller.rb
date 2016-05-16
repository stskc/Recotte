class StaticPagesController < ApplicationController
  def home
    @reco1 = Reco.where( 'id >= ?', rand(Reco.first.id..Reco.last.id) ).first
    @reco2 = Reco.where( 'id >= ?', rand(Reco.first.id..Reco.last.id) ).last
  end
end
