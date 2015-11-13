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


#


guatemalan = Bean.create!({
 region: "Guatemala",
 acidity: "Medium - high",
 body: "Heavy",
 flavor: "Smoky, Rich",
 })

tanzanian = Bean.create!({
 region: "Tanzania",
 acidity: "Delicate",
 body: "Heavy",
 flavor: "Rich, Smooth",
 })

haitian = Bean.create!({
 region: "Haiti",
 acidity: "Mild",
 body: "Heavy",
 flavor: "Winey, Sweet",
})

sumatran = Bean.create!({
 region: "Sumatra",
 acidity: "Medium",
 body: "Medium",
 flavor: "Exotic, Earthy",
})

brazilian = Bean.create!({
 region: "Brazil",
 acidity: "Mild",
 body: "Medium",
 flavor: "Dry, Spicy",
})

costa_rican = Bean.create!({
 region: "Costa Rica",
 acidity: "Subtle",
 body: "Full",
 flavor: "Sweet, Delicate",
})

mexican = Bean.create!({
 region: "Mexico",
 acidity: "Medium - light",
 body: "Medium-Light",
 flavor: "Thin, Hazelnut",
})

java = Bean.create!({
 region: "Java",
 acidity: "High",
 body: "High",
 flavor: "Mellow, Musty",
})

kenyan = Bean.create!({
   region: "Kenya",
   acidity: "High",
   body: "Medium",
   flavor: "Intense, Floral",
})

 ethiopian = Bean.create!({
   region: "Ethiopia",
   acidity: "Medium",
   body: "Full",
   flavor: "Gamey, Hints Of Cocoa",
})

 jamaican = Bean.create!({
   region: "Jamaica",
   acidity: "Medium",
   body: "Full",
   flavor: "Well-balanced, Pleasent",
})

 hawaiian = Bean.create!({
   region: "Hawaii",
   acidity: "Medium",
   body: "Medium",
   flavor: "Suttle, Rich",
})

 yemeni = Bean.create!({
   region: "Yemeni",
   acidity: "Delicate",
   body: "Medium",
   flavor: "Mild",
})

 colombian = Bean.create!({
   region: "Colombia",
   acidity: "Medium",
   body: "Medium-Full",
   flavor: "Caramelly",
})

 nicaraguan = Bean.create!({
   region: "Nicaraguan",
   acidity: "Low-Medium",
   body: "Light",
   flavor: "Mild, Pleasent",
})


# -------------------------------
# -------------------------------
# -------------------------------

freezing = WeatherType.create!({
  description: "Freezing, Beyond Repair",
  summary:  "more later",
  max_temp: 0,
  min_temp: -30,
  max_humidity: 1.00,
  min_humidity: 0.00,
  mood_id: unhappy.id,
  bean_id: guatemalan.id,
})

frigid = WeatherType.create!({
  description: "Frigid",
  summary:  "more later",
  max_temp: 40,
  min_temp: 25,
  max_humidity: 0.60,
  min_humidity: 0.00,
  mood_id: unhappy.id,
  bean_id: haitian.id,
})

chilly = WeatherType.create!({
  description: "Chilly - Jacket Weather",
  summary:  "more later",
  max_temp: 50,
  min_temp: 33,
  max_humidity: 0.70,
  min_humidity: 0.00,
  mood_id: unhappy.id,
  bean_id: mexican.id,
})

wet_and_cold = WeatherType.create!({
  description: "Chilly",
  summary:  "more later",
  max_temp: 50,
  min_temp: 33,
  max_humidity: 1.00,
  min_humidity: 0.80,
  mood_id: unhappy.id,
  bean_id: brazilian.id,
})

snowy = WeatherType.create!({
  description: "Snowy, Snow-storms - Winter Wonderland",
  summary: "more later",
  max_temp: 32,
  min_temp: 0,
  max_humidity: 1.00,
  min_humidity: 0.8,
  mood_id: unhappy.id,
  bean_id: sumatran.id,
})

sleety = WeatherType.create!({
  description: "Overcast & Sleety",
  summary: "more later",
  max_temp: 40,
  min_temp: 33,
  max_humidity: 1.00,
  min_humidity: 0.8,
  mood_id: unhappy.id,
  bean_id: nicaraguan.id,
})

hail = WeatherType.create!({
  description: "Muggy",
  summary: "more later",
  max_temp: 102,
  min_temp: 88,
  max_humidity: 0.95,
  min_humidity: 0.85,
  mood_id: unhappy.id,
  bean_id: colombian.id,
})

rainy = WeatherType.create!({
  description: "Rainy",
  summary: "more later",
  max_temp: 99,
  min_temp: 33,
  max_humidity: 1.00,
  min_humidity: 0.9,
  mood_id: peaceful.id,
  bean_id: hawaiian.id,
})

storm = WeatherType.create!({
  description: "Wet, Thunderstorms",
  summary: "more later",
  max_temp: 100,
  min_temp: 33,
  max_humidity: 1.00,
  min_humidity: 0.97,
  mood_id: peaceful.id,
  bean_id: java.id,
})

foggy = WeatherType.create!({
  description: "Damp, Foggy",
  summary: "more later",
  max_temp: 80,
  min_temp: 40,
  max_humidity: 0.9,
  min_humidity: 0.6,
  mood_id: peaceful.id,
  bean_id: kenyan.id,
})

dewey = WeatherType.create!({
    description: "Wet, Foggy",
    summary: "more later",
    max_temp: 80,
    min_temp: 60,
    max_humidity: 0.99,
    min_humidity: 0.9,
    mood_id: peaceful.id,
    bean_id: ethiopian.id,
})

dry = WeatherType.create!({
  description: "Dry, Sunny",
  summary: "more later",
  max_temp: 85,
  min_temp: 67,
  max_humidity: 0.5,
  min_humidity: 0.0,
  mood_id: energetic.id,
  bean_id: yemeni.id,
})

nevada = WeatherType.create!({
  description: "Dry, Sunny",
  summary: "more later",
  max_temp: 99,
  min_temp: 85,
  max_humidity: 0.3,
  min_humidity: 0.0,
  mood_id: energetic.id,
  bean_id: costa_rican.id,
})


perfect = WeatherType.create!({
  description: "Cloudy, Breezy",
  summary: "more later",
  max_temp: 78,
  min_temp: 65,
  max_humidity: 0.3,
  min_humidity: 0.0,
  mood_id: energetic.id,
  bean_id: jamaican.id,
})

breezy = WeatherType.create!({
  description: "Cloudy, Breezy",
  summary: "more later",
  max_temp: 74,
  min_temp: 55,
  max_humidity: 0.75,
  min_humidity: 0.3,
  mood_id: energetic.id,
  bean_id: ethiopian.id,
})

sunny = WeatherType.create!({
  description: "Hot, Sunny",
  summary: "more later",
  max_temp: 102,
  min_temp: 89,
  max_humidity: 0.70,
  min_humidity: 0.0,
  mood_id: energetic.id,
  bean_id: nicaraguan.id,
})

scorching = WeatherType.create!({
  description: "Scorching, Heat Wave",
  summary: "more later",
  max_temp: 125,
  min_temp: 101,
  max_humidity: 1.00,
  min_humidity: 0.0,
  mood_id: energetic.id,
  bean_id: tanzanian.id,
})

whatever = WeatherType.create!({
  description: "Anytime Coffee - Colombia's Finest!",
  summary: "more later",
  max_temp: 125,
  min_temp: -101,
  max_humidity: 1.00,
  min_humidity: 0.0,
  mood_id: peaceful.id,
  bean_id: colombian.id,
})

#-------------------------------
# -------------------------------
# -------------------------------
