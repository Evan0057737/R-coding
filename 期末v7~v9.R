data5 <- readxl::read_excel("data/metro.xlsx")
#總進站折線圖
library(ggplot2) 
library(gcookbook) 


taipeimetro <- data.frame(
  year = c(104,105,106,107,108,109,110,111),
  value = c(716.575283,
            738.974313,
            745.298914,
            764.804427,
            788.970453,
            695.540439,
            530.912219,
            587.017562
  )
)


ggplot(taipeimetro, aes(x = year, y = value)) +
  geom_line(color = "blue", size = 2) +
  labs(x = "年份", y = "人數(百萬)", title = "總進站折線圖") +
  scale_x_continuous(breaks = c(104,105,106,107, 108, 109,110,111), labels = c("104","105","106","107","108","109","110","111")
)
#104~108年人數改變量(斜率)
values <- c(716.575283,
          788.970453
)

change_rate <- function(values) {
  new_values <- values[-1]
  old_values <- values[-length(values)]
  
  rate <- (new_values - old_values) / old_values * 100
  
  return(rate)
}

result <- change_rate(values)
print(result)

#108~110人數改變量(斜率)
values2 <- c( 788.970453,
              530.912219)
change_rate <- function(values) {
  new_values <- values[-1]
  old_values <- values[-length(values)]
  
  rate <- (new_values - old_values) / old_values * 100
  
  return(rate)
}

result2 <- change_rate(values2)
print(result2)

#110~111人數改變量(斜率)
values3 <- c(530.912219,587.017562)
change_rate <- function(values) {
  new_values <- values[-1]
  old_values <- values[-length(values)]
  
  rate <- (new_values - old_values) / old_values * 100
  
  return(rate)
}

result3 <- change_rate(values3)
print(result3)

#進出站相關係數
co108 <- data.frame(
  X <- c( 788970453 , 32213290 , 28021574 , 26383018  ,22918425 , 15508892  ,15431724 , 14942869 , 14472026,
            13048812 , 12774960 , 12768222 , 12557498  ,12529506,  11839165 , 11703409,  11599492 , 10960768,
            10851408,  10810764  ,10752431 , 10584883 , 10497855  ,10070060  , 9975312 ,  9588769  , 9456006,
             9161345 ,  9095877   ,9060748 ,  8795910  , 8528563 ,  8458027   ,8203502 ,  8173487  , 8132062,
           8074391  , 8058457 ,  7940668  , 7802451  , 7697457  , 7573177  , 7084156  , 6731368  , 6697772,
             6502146 ,  6358823 ,  6218328  , 6162698 ,  6115163  , 6014623 ,  5913923  , 5506382 ,  5357695,
            5337318   ,5216306   ,5167189  , 5160937  , 5142984  , 5136693   ,5047217  , 4975425  , 4930890,
             4924815,   4910743  , 4859647  , 4783943 ,  4726784  , 4518600  , 4472613 ,  4379442 ,  4370474,
            4329197  , 4323933  , 4280696   ,4096043  , 4028843   ,3950474  , 3813387  , 3706781  , 3705644,
             3687794  , 3636745  , 3569929 ,  3540614  , 3496991 ,  3413429  , 3362609 ,  3352913  , 3342608,
            3335696 ,  3335302  , 3320081 ,  3128164  , 3093174 ,  2976268  , 2953953 ,  2928222  , 2676232,
             2674797 ,  2533464  , 2503141   ,2425455  , 2174568  , 2134235  , 2045650   ,1966180  , 1918325,
             1808454  , 1624626   ,1594225  , 1505355   ,1313968  , 1274941 ,  1175566  , 1137795 ,  1111153,
            920476),

  Y <- c(788970453, 35184207, 28297655 , 23497857 , 22834584 , 16646188 , 15207923 , 14379777 , 13571505 , 13481169 , 13418573 , 13307828, 13063997 , 12112395,
        11789483, 11678951 , 11242912, 11240924 , 10831768 , 10683673 , 10670179, 10584636 , 10506112, 10372629 , 9796328 , 9752318 , 9646413 , 9346404,
        9089934 , 8940430 , 8703301 , 8668814 , 8595742 , 8593000, 8573283 , 8516877, 8488097 , 8093456 , 8043072 , 7777414 , 7754299 , 7385181,
        7098530 , 6946372 , 6867475 , 6717227 , 6645947 , 6221183 , 6219435 , 5990333 , 5982851 , 5926291 , 5497713 , 5450194 , 5398594 , 5287254,
        5085322 , 5082422 , 5048206 , 5010919 , 4996530 , 4955870 , 4860405 , 4731585, 4574981, 4557783 , 4437983 , 4437086 , 4409363 , 4401348,
        4334631 , 4329358 , 4328408 , 4325451 , 4315094 , 4310013, 4209450 , 4075882 , 4072011 , 4009890 , 3625554 , 3541385 , 3529864 , 3503817,
        3480557 , 3478480 , 3445594 , 3367772 , 3278281 , 3235227 , 3195226 , 3045300, 3027637 , 2976175 , 2936342 , 2900911 , 2856901 , 2757323,
        2631584 , 2545414 , 2505663 , 2494589 , 2412453 , 2302274, 2044026 , 1910951 , 1767259 , 1727473 , 1574373 , 1561222 , 1560068 , 1518282,
        1306497 , 1238799 , 1223764 , 1136776 , 1063193 , 744769)
  
  
)

cor108 <- cor(co108$X....c.788970453..32213290..28021574..26383018..22918425..15508892.., co108$Y....c.788970453..35184207..28297655..23497857..22834584..16646188..)

print(paste("相關係數",cor108))


# 複製轉運站-----
# 複製第38列、做成中正紀念堂R
new_row1 <- data5[38,]
names(new_row1) <- names(data5)
data5 <- rbind(data5, new_row1)


# 複製第37列、做成古亭Y
new_row2 <- data5[37,]
names(new_row2) <- names(data5)
data5 <- rbind(data5, new_row2)

# 複製第76列、做成西門G
new_row3 <- data5[76,]
names(new_row3) <- names(data5)
data5 <- rbind(data5, new_row3)


# 複製第113列、做成東門R
new_row4 <- data5[113,]
names(new_row4) <- names(data5)
data5 <- rbind(data5, new_row4)

# 直接索引刪除指定行
na.omit(data5, inplace = TRUE)
data5 <- na.omit(data5)

#調整列數
rownames(data5) <- NULL



# 指定分組的索引108年進站
numberV9 <- data5$V9 |> as.numeric()
v9_data5 <- data5[ 4:124, 10, drop = FALSE]
v9_data5 <- as.data.frame((v9_data5))
View(v9_data5)
numberV9data5 <- as.numeric(v9_data5$V9)
rownames(v9_data5) <- NULL



# 板南線------
group_indices1 <- c(42, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84)
selected_data1 <- v9_data5[group_indices1, ]
selected_data1 <- as.numeric(selected_data1)

# 找到最大值和最小值對應的行索引
max_value1 <- max(selected_data1)
min_value1 <- min(selected_data1)
mean_value1 <- mean(selected_data1)
row_index_max1 <- which(selected_data1 == max_value1)
row_index_min1 <- which(selected_data1 == min_value1)
#data[c(73+3,65+3),c(1)] #這裡回傳的是list的順序，所以算上面的數字再把列數加三
row_index_max1
row_index_min1 

data5[c(76,68),c(1)]

cat("板南線108年進站資訊")
cat("最大值:", data5[c(76),c(1)], max_value1)
cat("最小值:", data5[c(68),c(1)], min_value1)
cat("平均值:", mean_value1, "\n")



# 淡水信義線-----
group_indices2 <- c(41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,85,86,87,88,89,18,121)
selected_data2 <- v9_data5[group_indices2, ]
selected_data2 <- as.numeric(selected_data2)

# 找到最大值和最小值對應的行索引
max_value2 <- max(selected_data2)
min_value2 <- min(selected_data2)
mean_value2 <- mean(selected_data2)
row_index_max2 <- which(selected_data2 == max_value2)
row_index_min2 <- which(selected_data2 == min_value2)
row_index_max2
row_index_min2
#data[c(a+3,b+3),c(1)]
data5[c(46,61),c(1)]

cat("淡水信義線108年進站資訊")
cat("最大值:", data5[c(46),c(1)], max_value2)
cat("最小值:", data5[c(61),c(1)], min_value2)
cat("平均值:", mean_value2, "\n")




# 中和新蘆線------------
group_indices3 <- c(37,38,39,40,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,119)
selected_data3 <- v9_data5[group_indices3, ]
selected_data3 <- as.numeric(selected_data3)

# 找到最大值和最小值對應的行索引
max_value3 <- max(selected_data3)
min_value3 <- min(selected_data3)
mean_value3 <- mean(selected_data3)
row_index_max3 <- which(selected_data3 == max_value3)
row_index_min3 <- which(selected_data3 == min_value3)
row_index_max3
row_index_min3
#data[c(a+3,b+3),c(1)]
data5[c(40,103),c(1)]

cat("中和新蘆線108年進站資訊")
cat("最大值:", data5[c(40),c(1)], max_value3)
cat("最小值:", data5[c(103),c(1)], min_value3)
cat("平均值:", mean_value3, "\n")



#松山新店線-----
group_indices4 <- c(25,26,27,28,29,30,31,32,33,34,35,36,90,91,92,93,94,95,96,120)
selected_data4 <- v9_data5[group_indices4, ]
selected_data4 <- as.numeric(selected_data4)

# 找到最大值和最小值對應的行索引
max_value4 <- max(selected_data4)
min_value4 <- min(selected_data4)
mean_value4 <- mean(selected_data4)
row_index_max4 <- which(selected_data4 == max_value4)
row_index_min4 <- which(selected_data4 == min_value4)
row_index_max4
row_index_min4
#data[c(a+3,b+3),c(1)]
data5[c(123,28),c(1)]

cat("松山新店線108年進站資訊")
cat("最大值:", data5[c(123),c(1)], max_value4)
cat("最小值:", data5[c(28),c(1)], min_value4)
cat("平均值:", mean_value4, "\n")


#文湖線-----
group_indices5 <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24)
selected_data5 <- v9_data5[group_indices5, ]
selected_data5 <- as.numeric(selected_data5)

# 找到最大值和最小值對應的行索引
max_value5 <- max(selected_data5)
min_value5 <- min(selected_data5)
mean_value5 <- mean(selected_data5)
row_index_max5 <- which(selected_data5 == max_value5)
row_index_min5 <- which(selected_data5 == min_value5)
row_index_max5
row_index_min5
#data[c(a+3,b+3),c(1)]
data5[c(27,14),c(1)]

cat("文湖線線108年進站資訊")
cat("最大值:", data5[c(27),c(1)], max_value5)
cat("最小值:", data5[c(14),c(1)], min_value5)
cat("平均值:", mean_value5, "\n")