#my economic grades
myEconomicgrades <- c(100,99)
myeconomicGrades <- c(100,99)
#import json file----
flight <- jsonlite::fromJSON("data/international_flights.json")

data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)

flights <- list(
  data = list(data1)
)
data1$filepath
data1$title
data1$source_link

data1 <- list(
  filepath = file,
  title = name,
  source_link = source_link
)
saveRDS(flights, "data/flights.rds")

# Read JSON file
filepath = flights$data[[1]]$file
flightsData <- jsonlite::fromJSON(filepath)
flights$data[[1]]$data_frame <- flightsData
saveRDS(flights, "data/flights.rds")

