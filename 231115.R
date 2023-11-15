flights <- readRDS("data/flights_week10.rds")
flightsData <- flights$data[[1]]$data_frame
dplyr::glimpse(flightsData)

flightsData$DepartureTimeZone |>
  table() |>
  sort(decreasing = T) -> tb_departurezone
#get unique time zone
uniquetimezone <- unique(flightsData$DepartureTimeZone)
#count number of time zones
numtimezone <- length(uniquetimezone)
#display the number of time zone
cat("Number of time zones", numtimezone)
#count observations
observationspertimezone <- table(flightsData$DepartureTimeZone)
#display observation
cat("Observations per time zone:\n")
print(observationspertimezone)

flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData

x=1

split_flightsData[[x]] |> dplyr::glimpse()
split_flightsData[[x]] |> View()


split_flightsData[[x]]$DepartureTime <- 
lubridate::ymd_hm(
  split_flightsData[[x]]$DepartureTime,
  tz=split_flightsData[[x]]$DepartureTimeZone[[1]]
)

split_flightsData[[x]] |> dplyr::glimpse()

flightsData <- flights$data[[1]]$data_frame


split_flightsData[[x]] |>
  dplyr::mutate(
    DepartureTime = 
      lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]])
  )
    

flightsData |>
  dplyr::group_by(DepartureTimeZone) |> 
  dplyr::mutate(
    DepartureTime = lubridate::ymd_hm(DepartureTime, tz = DepartureTimeZone[[1]]) 
  ) |>
  dplyr::group_by() ->
  flightsData2

dplyr::glimpse(flightsData2)
   