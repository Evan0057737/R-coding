number <- data5$V7 |> as.numeric()
sortnumber <- sort(number, decreasing=TRUE,index.return = TRUE)
print(sortnumber)

number2 <- data5$V8 |> as.numeric()
sortnumber2 <- sort(number2, decreasing=TRUE,index.return = TRUE)
print(sortnumber2)

number3 <- data5$V9 |> as.numeric()
sortnumber3 <- sort(number3, decreasing=TRUE,index.return = TRUE)
print(sortnumber3)

number4 <- data5$V1 |> as.numeric()
sortnumber4 <- sort(number4, decreasing=TRUE,index.return = TRUE)
print(sortnumber4)

number5 <- data5$V2 |> as.numeric()
sortnumber5 <- sort(number5, decreasing=TRUE,index.return = TRUE)
print(sortnumber5)

number6 <- data5$V3 |> as.numeric()
sortnumber6 <- sort(number6, decreasing=TRUE,index.return = TRUE)
print(sortnumber6)

data5$...1[c(46,76,45,82,79,72,73,65,80,40)]#107進
data5$...1[c(46,76,45,82,72,79,73,65,80,40)]#107出
data5$...1[c(46,76,45,82,79,72,73,65,40,89)]#108進

data5$...1[c(46,45,76,82,79,65,73,80,72,51)]#104進
data5$...1[c(46,76,45,82,79,80,72,65,73,51)]#104出
data5$...1[c(46,45,76,82,79,65,73,72,80,51)]#105進

data5$...1 |> 
  factor() ->　data5$mrtstop
levels(data5$mrtstop)[c(1,4, 3, 2)] <- c("a","a","b", "b")
data5$isbannan <- logical(120)
data5$isbannan[c(66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87)]= TRUE
data5$isxinyi <- logical(120)
data5$isxinyi[c(44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,88,89,90,91,92,113)]= TRUE
data5$iszhonghe <- logical(120)
data5$iszhonghe[c(100,101,102,103,104,105,106,107,108,109,110,111,112,114,115,116,117,118,119,120)]= TRUE
data5$issonshan<- logical(120)
data5$issonshan[c(28,29,30,31,32,33,34,35,36,37,38,39,93,94,95,96,97,98,99)]=TRUE
data5$iswenhu <- logical(120)
data5$iswenhu[c(4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)]= TRUE
  
data5$iswenhu
