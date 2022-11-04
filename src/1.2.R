# 将数据中的变量“经理人”和“日期”分别改为“经理人编号”和“调查日期” 。
# 将年龄“99”修改为“49”，并保存

names(leadership)[1] <- "经理人编号"
names(leadership)[2] <- "调查日期"

leadership[5, 5] <- 49

leadership

save(leadership, file = "leadership.RData")
write.csv(leadership, "leadership.csv")
