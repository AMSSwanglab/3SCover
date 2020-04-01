library(pheatmap)
library(readxl)
BBTF <- read_excel("safeguardTF.xlsx")
row.names(BBTF) <- BBTF$Description
tf <- data.matrix(BBTF)
pdf(file='heatmap-safeguardTF.pdf',pointsize=16)
p<-pheatmap(tf,color = colorRampPalette(c("#FFFFF0","#00BBBB"), space = "rgb")(50))
dev.off()

