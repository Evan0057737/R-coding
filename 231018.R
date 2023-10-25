flights = readRDS("data/flights.rds")  #ctrl enter
#project roots/flights.rds

# check the progress object structure
str(flights)

#retrieve data frame for analysis
flightsData <- flights$data[[1]]$data_frame

flightsData <- flights[["data"]][[1]][["data_frame"]]
#for list,$name is same as [["name]]

# Consider the following data frame of student grades
grades <- data.frame(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)

# it is an extended class out of the following list
grades_list <- list(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)
grades[["student"]]
grades[["midterm"]]
grades$final
grades_list$student[c(1,3)]

grades[, "student"]
# retrieve student column
grades[, c("student", "midterm")]
# retrieve student and midterm columns
grades[c(1,3), "student"]
# retrieve student column for rows 1 and 3
grades[c(1,3), c("student", "midterm")]
# retrieve student and midterm columns for rows 1 and 3)
#glimpse our data
dplyr::glimpse(flightsData)
flightsData[,c("AirlineID","ArrivalTime")]
flightsData[c(358,408),c("AirlineID","ArrivalTime")]
# check column names 
names(flightsData)
#class of elements
class(flightsData$AirlineID)
class(flightsData$ScheduleStartDate)
head(flightsData$AirlineID)
head(flightsData$ScheduleStartDate)

vec <- c("A","B","C")
typeof(vec)
class(vec)

bloodtype <- c("AB","AB","A","B","A","A","B","O","O","AB")

householdIncomes <- c(
  "middle income", "high income", "middle income", "low income",
  "middle income", "high income", "high income", "low income",
  "high income", "middle income", "high income", "middle income"
)
# we want it to be factor class
class(householdIncomes)

householdIncomes[[1]]
householdIncomes[[1]] < "high income"
householdIncomes[[1]] < "low income"

#compare strings
"high income" < "middle income"
"h"<"m"

#parsing
# parse to factor
factor( "an object of class character")

# parse to ordered factor
ordered( "an object of class character, levels = a vector of levels from smallest to largest")

fct_householdIncome <- factor(householdIncomes)

ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income"))

class(fct_householdIncome)


ord_fct_householdIncome[[1]]
householdIncomes[[1]] < "high income"
ord_fct_householdIncome[[1]]
ord_fct_householdIncome[[1]]<"high income"
# Counts on each level
table(fct_householdIncome)
table(ord_fct_householdIncome)

# Proportion on each level
tb_fct_householdIncome <- table(fct_householdIncome)
prop.table(tb_fct_householdIncome)

tb_ord_fct_householdIncome <- table(ord_fct_householdIncome)
prop.table(tb_ord_fct_householdIncome)
#parse Airline ID
class(flightsData$AirlineID)
factor(flightsData$AirlineID)
flightsData$AirlineID <- factor(flightsData$AirlineID)
class(flightsData$AirlineID)


flights$data[[1]]$data_frame <- flightsData
saveRDS(flights, "data/flights.rds")