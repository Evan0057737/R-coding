numbers <- c(1,2,3,4,5)
#print numbers by pattern
#.x from 1 to 5

for(xy in c(1,2,3,4,5))
{print(numbers[[xy]])}

howmanytimes=5
for(.x in 1:howmanytimes)

  
  dataSet <- list(
    list(
      gender="male", height=178, age=32,
      children=list(
        list(gender="male", age=5),
        list(gender="male", age=0))
    ),
    list(
      gender="female", height=166, age=30,
      children=list(
        list(gender="female", age=3))
    ),
    list(
      gender="male", height=170, age=42,
      children=list(
        list(gender="male", age=10),
        list(gender="female", age=8))
    ),
    list(
      gender="male", height=188, age=22,
      children=list()
    ),  
    list(
      gender="male", height=172, age=52,
      children=list(
        list(gender="female", age=25),
        list(gender="female", age=23))
    ),
    list(
      gender="female", height=160, age=42,
      children=list(
        list(gender="female", age=11))
    )
  )

#pattern
howmanytimes=length(dataSet)
for(.x in 1:howmanytimes)
{print(length(dataSet[[.x]]$children))}

emptydataset=list()
1:length(emptydataset)
for(.x in c(1,0))
print(emptydataset[[.x]])

seq_along((emptydataset))
for(.x in seq_along(dataSet))
print(dataSet[[.x]]$children)


for(.x in seq_along(dataSet))
numberofchildren <- length(dataSet[[.x]]$children)
print(numberofchildren)


results <- vector("integer",6)
for(.x in seq_along(dataSet))
  numberofchildren <- length(dataSet[[.x]]$children)
print(numberofchildren)
results[[.x]] <- numberofchildren

results <- vector("integer",6)
for(.x in 1:6)
  results[[.x]] <- length(dataSet[[.x]]$children)