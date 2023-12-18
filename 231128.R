job <- jsonlite::fromJSON("data/job.json")
jobcode<- jsonlite::fromJSON("data/jobcode.json")
jobcool= "data/job.json"
jobcode2="data/jobcode.json"
insurance <- jsonlite::fromJSON("data/insurance.json")
die <- jsonlite::fromJSON("data/225684.json")
air <- jsonlite::fromJSON("data/air.json")
money <- jsonlite::fromJSON("data/company.json")
metro <- jsonlite::fromJSON("data/metro.json")

train<- jsonlite::fromJSON("data/train.json")

library(jsonlite)
library(dplyr)

# 讀取JSON檔案
json_data <- fromJSON("C:/R-coding/data/job.json")

# 將JSON數據轉換為data.frame
df <- as.data.frame(json_data)

# 假設 "平均投保薪資" 欄位中包含非數值數據
df$平均投保薪資 <- as.numeric(df$平均投保薪資)

# 使用dplyr套件進行分析和排序
result <- df %>%
  group_by(業別) %>%              # 假設"業別"是JSON中的相應欄位
  summarize(平均投保薪資 = mean(平均投保薪資)) %>%
  arrange(desc(平均投保薪資))     # 按照平均投保薪資由高到低排序

# 打印排序後的結果
print(result)

# 讀取JSON檔案
json_data2 <- fromJSON("C:/R-coding/data/225684.json")

# 將JSON數據轉換為data.frame
df5 <- as.data.frame(json_data2)

# 假設 "平均投保薪資" 欄位中包含非數值數據
df5$`人數-合計` <- as.numeric(df5$`人數-合計`)

# 使用dplyr套件進行分析和排序
result <- df5 %>%
  group_by(死亡原因) %>%              # 假設"業別"是JSON中的相應欄位
  summarize(`人數-合計` = mean(`人數-合計`)) %>%
  arrange(desc(`人數-合計`))     # 按照平均投保薪資由高到低排序

# 打印排序後的結果
print(result)


json_data4 <- fromJSON("C:/R-coding/data/company.json")

# 將JSON數據轉換為data.frame
df6 <- as.data.frame(json_data4)

# 假設 "平均投保薪資" 欄位中包含非數值數據
df6$`營業收入-去年同月增減(%)` <- as.numeric(df6$`營業收入-去年同月增減(%)`)

# 使用dplyr套件進行分析和排序
result <- df6 %>%
  group_by(產業別) %>%              # 假設"業別"是JSON中的相應欄位
  summarize(`營業收入-去年同月增減(%)` = mean(`營業收入-去年同月增減(%)`)) %>%
  arrange(desc(`營業收入-去年同月增減(%)`))     # 按照平均投保薪資由高到低排序

# 打印排序後的結果
print(result)



json_data5 <- fromJSON("C:/R-coding/data/metro.json")


