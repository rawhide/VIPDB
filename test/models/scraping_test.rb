require 'test_helper'

class ScrapingTest < ActiveSupport::TestCase

  def setup
    @subject = Scraping.create url: "http://hayabusa.2ch.net/news4vip/subback.html"
  end

  test "# absolute_url " do
    assert_equal "http://hayabusa.2ch.net/news4vip", @subject.absolute_url
  end

end
