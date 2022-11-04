# 画出雷达图，比较两个班考试成绩的分布是否相似

library(readxl)
library(fmsb)
orig_data <- read_xls("题目3.xls")

png(filename = "radar.png")
radarchart(orig_data[, 2:6], axistype = 0, seg = 4, maxmin = F, vlabels = names(orig_data[, 2:6]), pcol = rainbow(2), plwd = 3)
legend(x = "topleft", legend = as.matrix(orig_data[, 1]), col = rainbow(2), lwd = 1)
dev.off()
