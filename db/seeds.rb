# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  {title: "test_1", url: "http://hayabusa.2ch.net/news4vip/"},
  {title: "test_2", url: "http://hayabusa3.2ch.net/mnewsplus/"}
].each do |scraping|
  s = Scraping.new(scraping)

  next unless s.save

  [
    {name: "スレッド_1"},
    {name: "スレッド_2"},
    {name: "スレッド_3"},
    {name: "スレッド_4"},
  ].each do |board|
    b = s.boards.build(board)
    next unless b.save
    t = Time.now
    [
      {voice_body: "内容", voice_name: "投稿者1", posted_at: t.to_s, voice_id: ["hoge", "fuga", "moge", "koge"][rand(4)]}
    ].each do |comment|
      c = b.comments.build(comment)
      p c.save
    end
  end
end
