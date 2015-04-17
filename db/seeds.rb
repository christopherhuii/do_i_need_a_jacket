# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

weather_responses = [
  ["do you want to get a heatstroke?", "hot"],
  ["NO", "hot"],
  ["NO.", "hot"],
  ["you should be taking off clothes..", "hot"],
  ["suns out, guns out", "hot"],
  ["you should be wearing a tank top", "hot"],
  ["fewer the clothes, the better", "hot"],
  ["it's beautiful out!", "hot"],
  ["this is tanning weather!", "hot"],
  ["this is not sweater weather", "hot"],
  ["tank top will do", "hot"],
  ["Maybe", "medium"],
  ["light jacket, perhaps?", "medium"],
  ["maybe, just maybe..", "medium"],
  ["flip a coin and decide", "medium"],
  ["only if you're a wimp", "medium"],
  ["nah, a little cold never hurt anybody", "medium"],
  ["you wont die without one", "medium"],
  ["t-shirt will do", "medium"],
  ["YES", "cold"],
  ["you better wear one..", "cold"],
  ["YES.", "cold"],
  ["not if you're trying to get sick", "cold"],
  ["not if you want nipple blades", "cold"],
  ["put on a jacket and never take it off", "cold"],
  ["wear a jacket, please", "cold"],
  ["it's cold outside, don't say i didn't warn you", "cold"],
  ["definitely", "cold"]
]

  weather_responses.each do |weather_phrase, condition|
    Weather.create(weather_phrase: weather_phrase, condition: condition)
  end