library(ggplot2)
library(readxl)
data = read_excel("control.xlsx")
a = data.frame(time = c(1:1000))
b = cbind(a,data)

pdf('total_control_TF.pdf',pointsize=16)
p=ggplot(data, aes(number)) +geom_histogram(binwidth=1,aes(y = ..density..),fill = "#59CCCC",alpha=0.8)+stat_bin(binwidth=1,alpha = 0.2)+theme(panel.background = element_blank(),text = element_text(size=20,face = "bold"))+labs(title="number of cell types TF top-ranked")
p
dev.off()
