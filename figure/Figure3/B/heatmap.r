library(pheatmap)
library(readxl)
BBTF <- read_excel("complexity_30vs_all.xlsx")
row.names(BBTF) <- BBTF$Description
tf <- data.matrix(BBTF)
tf = tf[,-1]
tf = log10(tf+0.00001)
tf[tf < -1] = -1
pdf(file='exp-heatmap-GTEx.pdf',pointsize=16)
p<-pheatmap(t(tf),cellwidth = 6, cellheight = 6, fontsize=6, fontsize_row=6, cluster_cols=T,cluster_rows=T,cutree_rows =8,color = colorRampPalette(c("#FFFFF0","#00BBBB"), space = "rgb")(50))
dev.off()

