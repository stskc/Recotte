class StaticPagesController < ApplicationController
  def home
    @main1 = Main.where( 'id >= ?', rand(Main.first.id..Main.last.id) ).first
    @main2 = Main.where( 'id >= ?', rand(Main.first.id..Main.last.id) ).first
  end
end
