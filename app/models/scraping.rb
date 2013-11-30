class Scraping < ActiveRecord::Base
  has_many :boards

  # スクレイピング処理をここに実装
  def execute

  end

  # urlから絶対URLを取得します
  def absolute_url
  end


end
