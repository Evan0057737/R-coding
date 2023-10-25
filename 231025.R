flights=readRDS("data/week7/flights.rds")

flightsData <- flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

#summarize Airline ID
levels(flightsData$AirlineID)
levels(flightsData$AirlineID) |> length()

sum(c(1,5,12,16))

c(29,23,1,17)|> sum()

c(1,2,2,4,4,4,6,6) |> table()

flightsData$AirlineID |> table() ->tb_airlineID

levels(flightsData$AirlineID)

class(tb_airlineID)
typeof(tb_airlineID)

tb_airlineID |> sort(decreasing=TRUE)
sort(tb_airlineID,decreasing=TRUE)
