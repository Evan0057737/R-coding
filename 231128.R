job <- jsonlite::fromJSON("data/job.json")
jobcode<- jsonlite::fromJSON("data/jobcode.json")
jobcool= "data/job.json"
jobcode2="data/jobcode.json"
insurance <- jsonlite::fromJSON("data/insurance.json")

table(skill$職類名稱)
skill <- jsonlite::fromJSON("data/skill.json")
skill$職類名稱 |> table() ->tb_skill
tb_skill |> sort(decreasing=TRUE)
sort(tb_skill,decreasing=TRUE)

table(skill$報檢數)
sum(skill$職類名稱)