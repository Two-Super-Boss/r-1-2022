# 如下是A、B两个班学生的数学考试成绩数据，绘制反映这两个班考试成绩的背靠背茎叶图

library(aplpack)
orig_data <- read.csv("题目2.csv")
attach(orig_data)

stem.leaf.backback(`A班考试成绩`, `B班考试成绩`)