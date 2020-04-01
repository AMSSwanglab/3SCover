library(pheatmap)
library(readxl)
library(pheatmap)
library(showtextdb)
library(showtext)
library(grid)
library(extrafont)
library(RColorBrewer)
library(ggbiplot)
library(elasticnet)
BBTF <- read_excel("heatmap.xlsx")
row.names(BBTF) <- BBTF$Regulon
tf <- data.matrix(BBTF)
tf = tf[,-1]
p<-pheatmap(t(tf),cellwidth = 6, cellheight = 0.45, fontsize=6, fontsize_row=0.5, cluster_cols=T,cluster_rows=T,cutree_cols=7,cutree_rows =8,color = c("#FFFFF0","#00BBBB"))
pdf(file='heatmap.pdf',pointsize=16)
grid.draw(p)
dev.off()

