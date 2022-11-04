# 某行业管理局所属40个企业2002年的产品销售收入

library(DescTools)
orig_data <- read.csv("book2.2.csv", header = F)

# 根据上面的数据进行适当的分组编制频数分布表，频数分布表应包括频数、百分比和累积百分比；
low_val <- 80
high_val <- 160
step_val <- 10
x_breaks <- seq(low_val, high_val, step_val)
table <- Freq(as.matrix(orig_data), breaks = x_breaks)
table

# 参考第二章课件，以上述频数分布表为基础，用R语言绘制关于产品销售收入直方图
png(filename = "sell.png")
hist(orig_data$V1, labels = T, xlab = "收入", ylab = "数量", main = "")
dev.off()
