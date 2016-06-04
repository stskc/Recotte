class StaticPagesController < ApplicationController

  def home
    @main1 = Main.where(viewed: false).sample
    if Main.exists?(viewed: false)
      @main1.update_attribute(:viewed, true)
    else
      Main.where(viewed: true).update_all(viewed: false)
      redirect_to root_path
    end
  end

end
