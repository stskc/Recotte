class StaticPagesController < ApplicationController

  def home
    @main1 = Main.where( 'id >= ?', rand(Main.first.id..Main.last.id) ).first.uniq
  end

end
