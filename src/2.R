# 为评价家电行业售后服务的质量，随机抽取了由100个家庭构成的一个样本。
# 服务质量的等级分别表示为：A.好；B.较好；C.一般；D.差；E.较差。

# 属于向量
orig_data <- read.csv("book2.1.csv", header = FALSE)

# 用R语言制作一张频数分布表
table <- table(orig_data)
table

# 绘制一张条形图和帕累托图，反映评价等级的分布。

# 条形图
png(filename = "barchart.png")
barplot(table)
dev.off()

# 帕累托图
png(filename = "paretochart.png")
par(mar = c(4, 4, 3, 3))
barplot(
  table,
  xlab = "服务质量等级",
  ylab = "样本量"
)
par(new = T)
plot(cumsum(table) / sum(table), axes = FALSE, xlab = "", ylab = "", col = "black", type = "b")
axis(side = 4)
mtext("累计频率", side = 4, line = 2)
dev.off()