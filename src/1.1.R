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
