# 487631016------
c('john','Mary')
c(2,1145.14)
c(TRUE,F,T,FALSE)
list("kirito",114514,T)
typeof(c("John", "Mary"))
typeof(list("John", 178, TRUE))
list("John",42, list("Mary", 35))

#Binding-----
personName =c("JOHN","mary")
intersetingNunmber =c(2,1145.14)
covidPositive =c(T,TRUE,F)

#name call-----
personName
intersetingNunmber
covidPositive

#Retrieve One element value----
#by position / index
personName[[1]]
personName[[2]]

listExample = list("john",114514,T)
listExample
listExample[[3]]

#Name your element values----
## name:john age:38 height:178 Married:False
list("john",38,178,FALSE)
recordexample= list(
"name"="john",
"age"=38,
"height"=178,
"married"=F
)
recordexample[[1]]
recordexample[["name"]]
recordexample$married

#Retrieve multiple element values----
## by position /index----
listExample
listExample[c(1,3)]

atomicexample =c(1,1,4,5,1,4)
atomicexample[c(1,3,6)]
atomicexample[2:5]
## by element name----
recordexample[c("name","height","married")]
# nested list----
person1 =list(
  "name"="john",
  "age"=38,
  "height"=178,
  "married"=F
)
person2 =list(
  "name"="mary",
  "age"=32,
  "height"=158,
  "married"=TRUE
)
collective_data =list(person1,person2)
collective_data =list(list(
  "name"="john",
  "age"=38,
  "height"=178,
  "married"=F
),
list(
  "name"="mary",
  "age"=32,
  "height"=158,
  "married"=TRUE
)
)
# Sequential Retrieval----
## Retrieve the 2nd person's data and tell me his/her name
collective_data[[2]][["name"]]
## Retrieve the 2nd person's data and tell me his/her name and marriage
collective_data[[2]][c(1,4)]
