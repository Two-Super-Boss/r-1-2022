# 利用如下数据构建茎叶图

orig_data <- read.csv("题目1.csv", header = F)
stem(orig_data$V1)