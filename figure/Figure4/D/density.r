library(ggplot2)
library(readxl)
data = read_excel("control1.xlsx")
a = data.frame(time = c(1:10000))
b = cbind(a,data)
pdf('total_control_TF_line.pdf',pointsize=16)
p=ggplot(data, aes(total)) +stat_density(geom = 'line', position = 'identity')+theme(panel.background = element_blank(),text = element_text(size=20,face = "bold"))+labs(title="number of cell types TF top-ranked")
p
dev.off()



