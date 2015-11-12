peaceful = Mood.create!({
  name: "Peaceful",
  description: "Tranquility",
})

unhappy = Mood.create!({
  name: "Unhappy",
  description: "Miserable"}
)

energetic= Mood.create!({
  name: "Energetic",
  description: "Hyper"
})

freezing = WeatherType.create!({
  description: "Freezing, Wet",
  summary:  "more later",
  max_temp: 0,
  min_temp: -30,
  max_humidity: 1.00,
  min_humidity: 0.00,
  mood_id: unhappy.id
})
snowy = WeatherType.create!({
  description: "Snowy, Snow-storms",
  summary: "more later",
  max_temp: 32,
  min_temp: 0,
  max_humidity: 1.00,
  min_humidity: 0.00,
  mood_id: unhappy.id
})
hail = WeatherType.create!({
  description: "Hail",
  summary: "more later",
  max_temp: 30,
  min_temp: 0,
  max_humidity: 1.00,
  min_humidity: 0.00,
  mood_id: unhappy.id})

rainy = WeatherType.create!({
  description: "Rainy",
  summary: "more later",
  max_temp: 105,
  min_temp: 20,
  max_humidity: 1.00,
  min_humidity: 0.40,
  mood_id: peaceful.id})

storm = WeatherType.create!({
  description: "Dry, Thunderstorms",
  summary: "more later",
  max_temp: 105,
  min_temp: 45,
  max_humidity: 1.00,
  min_humidity: 0.70,
  mood_id: peaceful.id})

foggy = WeatherType.create!({
  description: "Wet, Foggy",
  summary: "more later",
  max_temp: 80,
  min_temp: 40,
  max_humidity: 1.00,
  min_humidity: 0.50,
  mood_id: peaceful.id})

dry = WeatherType.create!({
  description: "Dry, Sunny",
  summary: "more later",
  max_temp: 85,
  min_temp: 70,
  max_humidity: 1.00,
  min_humidity: 0.80,
  mood_id: energetic.id})

breezy = WeatherType.create!({
  description: "Cloudy, Breezy",
  summary: "more later",
  max_temp: 70,
  min_temp: 60,
  max_humidity: 1.00,
  min_humidity: 0.46,
  mood_id: energetic.id})

sunny = WeatherType.create!({
  description: "Hot, Sunny",
  summary: "more later",
  max_temp: 115,
  min_temp: 90,
  max_humidity: 1.00,
  min_humidity: 0.90,
  mood_id: energetic.id})

guatemalan = Bean.create!({
  region: "Guatemala",
  acidity: "Medium - high",
  body: "Heavy",
  flavor: "Smoky, Rich",
  weather_type_id: freezing.id
})
tanzanian = Bean.create!({
  region: "Tanzania",
  acidity: "Delicate",
  body: "Heavy",
  flavor: "Rich, Smooth",
  weather_type_id: snowy.id
})
haitian = Bean.create!({
  region: "Haiti",
  acidity: "Mild",
  body: "Heavy",
  flavor: "Winey, Sweet",
  weather_type_id: hail.id
})
sumatran = Bean.create!({
  region: "Sumatra",
  acidity: "Medium",
  body: "Medium",
  flavor: "Exotic, Earthy",
  weather_type_id: freezing.id
})
brazilian = Bean.create!({
  region: "Brazil",
  acidity: "Mild",
  body: "Medium",
  flavor: "Dry, Spicy",
  weather_type_id: snowy.id
})
costa_rican = Bean.create!({
  region: "Costa Rica",
  acidity: "Subtle",
  body: "Full",
  flavor: "Sweet, Delicate",
  weather_type_id: dry.id
})
 mexican = Bean.create!({
  region: "Mexico",
  acidity: "Medium - light",
  body: "Medium-Light",
  flavor: "Thin, Hazelnut",
  weather_type_id: breezy.id
})
 java = Bean.create!({
  region: "Java",
  acidity: "High",
  body: "High",
  flavor: "Mellow, Musty",
  weather_type_id: sunny.id
})
 kenyan = Bean.create!({
    region: "Kenya",
    acidity: "High",
    body: "Medium",
    flavor: "Intense, Floral",
    weather_type_id: dry.id
})
  ethiopian = Bean.create!({
    region: "Ethiopia",
    acidity: "Medium",
    body: "Full",
    flavor: "Gamey, Hints Of Cocoa",
    weather_type_id: breezy.id
})
  jamaican = Bean.create!({
    region: "Jamaica",
    acidity: "Medium",
    body: "Full",
    flavor: "Well-balanced, Pleasent",
    weather_type_id: rainy.id
})
  hawaiian = Bean.create!({
    region: "Hawaii",
    acidity: "Medium",
    body: "Medium",
    flavor: "Suttle, Rich",
    weather_type_id: storm.id
})
  yemeni = Bean.create!({
    region: "Yemeni",
    acidity: "Delicate",
    body: "Medium",
    flavor: "Mild",
    weather_type_id: foggy.id
})
  colombian = Bean.create!({
    region: "Colombia",
    acidity: "Medium",
    body: "Medium-Full",
    flavor: "Caramelly",
    weather_type_id: rainy.id
})
  nicaraguan = Bean.create!({
    region: "Nicaraguan",
    acidity: "Low-Medium",
    body: "Light",
    flavor: "Mild, Pleasent",
    weather_type_id: storm.id
})
