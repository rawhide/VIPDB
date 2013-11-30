class Admin::ScrapingsController < ApplicationController

  def index
    @scrapings = Scraping.all
  end

end
