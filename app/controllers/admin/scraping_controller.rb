class ScrapingController < ApplicationController

  def index
    @scrapings = Scraping.all
  end

end
