# 基于课件上的共同基金收益数据，分别构造成长型基金和价值型基金三年收益的频数分布表；

library(DescTools)
orig_data <- read.csv("Mutual Funds.csv")

grow_data_three <- orig_data[orig_data$Objective == "Growth", "X3.Year.Return"]
val_data_three <- orig_data[orig_data$Objective == "Value", "X3.Year.Return"]

low_val <- -10
high_val <- 40
step_val <- 5
x_breaks <- seq(low_val, high_val, step_val)

grow_table <- table(cut(grow_data_three, breaks = x_breaks))
val_table <- table(cut(val_data_three, breaks = x_breaks))

table <- data.frame(三年收益 = names(grow_table), 成长型频数 = as.vector(grow_table[]), 价值型频数 = as.vector(val_table[]))
table

# 绘制成长型基金和价值型基金五年收益的箱线图
grow_data_five <- orig_data[orig_data$Objective == "Growth", "X5.Year.Return"]
val_data_five <- orig_data[orig_data$Objective == "Value", "X5.Year.Return"]
grow_table_five <- table(cut(grow_data_five, breaks = x_breaks))
val_table_five <- table(cut(val_data_five, breaks = x_breaks))
five_table <- data.frame(五年收益 = names(grow_table_five), Growth = as.vector(grow_table_five[]), Value = as.vector(val_table_five[]))
png(filename = "box.png")
palette <- RColorBrewer::brewer.pal(6, "Set2")
boxplot(five_table[, 2:3], col = palette)
dev.off()
