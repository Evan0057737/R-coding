data2 <- list(
  meta = list(
    name="航空公司統一代碼",
    source_link ="https://data.gov.tw/dataset/8088"
  ),
  file = "data/airlines.json"
)

flights$data[[2]]<-data2
airlines <-
  jsonlite::fromJSON(
    flights$data[[2]][["file"]]
  )

flights$data[[2]][["data_frame"]] <- airlines

saveRDS(flights, file="flights.rds")

# dplyr::left_join example

# two data frames
df1 <- data.frame(
  id = c(1, 2, 3, 4, 5),
  name = c("A", "B", "C", "D", "E")
)

df2 <- data.frame(
  id = c(1, 2, 3, 4, 5, 7),
  score = c(90, 80, 70, 60, 50, 40)
)

# join by id
dplyr::left_join(df1, df2, by = "id")

# join by id
df3 <- data.frame(
  ID = c(1, 2, 3, 4, 5, 7),
  score = c(90, 80, 70, 60, 50, 40)
)

# join by df
dplyr::left_join(df1,df3, by = c("id" = "ID"))


dplyr::left_join(
  flightsData, airlines,
  by="AirlineID"
) -> flightsData

flightsData$AirlineName <-
  factor(
    flightsData[["AirlineName"]]
  )

names(flightsData)

airports <- airportr::airports
dplyr::glimpse(airports)

dplyr ::filter(
  airports,
  Country == "Taiwan"
) -> airports_taiwan

head(airports_taiwan)

airports_taiwan$IATA

unique(airports_taiwan$IATA)
flightsData$DepartureAirportID

flightsData |>
  dplyr::filter(
    DepartureAirportID %in% unique(airports_taiwan[["IATA"]])) -> 
  departure_flightsData

flightsData |>
  dplyr::filter(
    ArrivalAirportID %in% unique(airports_taiwan[["IATA"]])) -> 
  arrival_flightsData


flights$data[[3]] <- list(
  departure_flightsData= departure_flightsData,
  arrival_flightsData = arrival_flightsData
)

nrow(departure_flightsData)

flights$dataSummary <- dataSummary

saveRDS(flights, file="data/flights.rds")

whichNeedPlus1 <- grep(pattern = "+1", flightsData$DepartureTime, fixed = TRUE)

whichNeedPlus1


