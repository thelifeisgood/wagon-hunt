class PagesController < ApplicationController
  def home
  	@today = Date.today
  end

  def team
  	@members = ["Antho", "Yoann"]
  end

  def join_us
  	render plain: "Send us a mail"
  end
end
