# 对leadership数据判断是否有缺失元素

is.na(leadership)

# 移除leadership中含有缺失值的记录，保存为new_leadership

new_leadership <- na.omit(leadership)
new_leadership
