# 如下数据反映了40名商学院学生在接受调查时对两个问题——性别（男性=M；女性=F）以及专业（会计学=A；计算机信息系统=C；市场营销=M）的回答：

# 在R语言中以数据框形式录入数据
gender <- c('M', 'M', 'M', 'F', 'M', 'F', 'F', 'M', 'F', 'M', 'F', 'M', 'M', 'M', 'M', 'F', 'F', 'M', 'F', 'F', 'M', 'M', 'M', 'M', 'F', 'M', 'F', 'F', 'M', 'M', 'F', 'M', 'M', 'M', 'M', 'F', 'M', 'F', 'M', 'M')
major <- c('A', 'C', 'C', 'M', 'A', 'C', 'A', 'A', 'C', 'C', 'A', 'A', 'A', 'M', 'C', 'M', 'A', 'A', 'A', 'C', 'C', 'C', 'A', 'A', 'M', 'M', 'C', 'A', 'A', 'A', 'C', 'C', 'A', 'A', 'A', 'A', 'C', 'C', 'A', 'C')
survey <- data.frame(gender = gender, major = major)

# 用列联表展示数据，其中行表示性别类别，列表示专业类别
table <- table(survey$gender, survey$major)
table

# 在上述列联表上增加边际和，并将列联表转化成百分比
addmargins(table)
addmargins(prop.table(table) * 100)

# 绘制横轴是专业类别的并列条形图
png(filename = "major.png")
barplot(table, beside = T, xlab = "专业类别", ylab = "比例", legend.text = c("女", "男"))
dev.off()
