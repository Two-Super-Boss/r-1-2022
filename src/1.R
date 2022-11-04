# 以数据框的形式创建上述数据，定义数据名字为leadership，并将其分别存为R格式和csv格式
person <- c(1, 2, 3, 4, 5)
date <- c("10/24/14", "10/28/14", "10/01/14", "10/12/14", "05/01/14")
region <- c("US", "US", "UK", "UK", "UK")
gender <- c("M", "F", "F", "M", "F")
old <- c(32, 45, 25, 39, 99)
q1 <- c(5, 3, 3, 3, 2)
q2 <- c(4, 5, 5, 3, 2)
q3 <- c(5, 2, 5, 4, 1)
q4 <- c(5, 5, 5, NA, 2)
q5 <- c(5, 5, 2, NA, 1)
leadership <-
  data.frame(
    经理人 = person,
    日期 = date,
    国籍 = region,
    性别 = gender,
    年龄 = old,
    q1 = q1,
    q2 = q2,
    q3 = q3,
    q4 = q4,
    q5 = q5
  )

leadership

save(leadership, file = "leadership.RData")
write.csv(leadership, "leadership.csv")

# 将数据中的变量“经理人”和“日期”分别改为“经理人编号”和“调查日期” 。
names(leadership)[1] <- "经理人编号"
names(leadership)[2] <- "调查日期"

# 将年龄“99”修改为“49”，并保存
leadership$`年龄` <- gsub(99, 49, leadership$`年龄`)

leadership

save(leadership, file = "leadership.RData")
write.csv(leadership, "leadership.csv")

# 对leadership数据判断是否有缺失元素
is.na(leadership)

# 移除leadership中含有缺失值的记录，保存为new_leadership
new_leadership <- na.omit(leadership)
new_leadership

# 求出所有经理人年龄的平均值
average <- mean(leadership$`年龄`)

# 将leadership数据分别按照经理人的年龄升序、降序排序
leadership[order(leadership$`年龄`),]
leadership[order(-leadership$`年龄`),]

# 选择所有年龄大于23岁的女性，并且仅保留变量国籍、性别、年龄、q4和q5
leadership[leadership$`年龄` > 23 & leadership$`性别` == "F", c("国籍", "性别", "年龄", "q4", "q5")]
