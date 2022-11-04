# 求出所有经理人年龄的平均值

average <- mean(leadership$`年龄`)

# 将leadership数据分别按照经理人的年龄升序、降序排序

leadership[order(leadership$`年龄`),]
leadership[order(-leadership$`年龄`),]

# 选择所有年龄大于23岁的女性，并且仅保留变量国籍、性别、年龄、q4和q5

leadership[leadership$`年龄` > 23 & leadership$`性别` == "F", c("国籍", "性别", "年龄", "q4", "q5")]
