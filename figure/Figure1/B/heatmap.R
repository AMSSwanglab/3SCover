library(pheatmap)
library(readxl)
library(showtextdb)
library(showtext)
library(grid)
font_add(family="arial",regular="arial.ttf")
gp <- get.gpar()
allgene = read.table('rank.txt',sep = '\t',header = TRUE)
X = data.matrix(allgene)
X = X[,-1]
B=X[1:50,1:50]
row.names(X)=allgene[,1]
p=pheatmap(B,cluster_cols = FALSE,border_color=NA,cluster_rows = FALSE,fontsize_col=5,fontsize_row=5,gp = gpar(fontface = 'bold'))$gtable;
pdf(file='heatmap_rank.pdf')
grid.draw(p)
dev.off()