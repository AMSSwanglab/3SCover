#for plot
library(stringr)
library(ggplot2)
library(ggpubr)
#j接下来是用R作图画出errorbar
TF = read.table("corr-3brianTF-muti-rm.txt", header = TRUE, sep='\t')
#TF = as.character(TF)
size0= 7
ymin = -0.6
ymax=0.65
size1 =0.5
alpha0 = 0.3
i = 1
AA=1:dim(TF)[1]
AA=0*AA
AA[TF$tissue=="Brain"]=1
TF$class=AA
data=TF
#data1 = data[,2:4]
#row.names(data1) = data$tissue

for (i in 2:31)
{
data=TF[,c(1,i)]
colnames(data)=c("tissue","mean1")

p1 = ggplot(data,aes(tissue,mean1))+geom_boxplot(outlier.alpha = 0)+
    labs(title = paste0(colnames(TF)[i]))+ylab( "Correlation")+
    geom_abline(intercept=0,slope=0,col="gray",alpha=0.5,lwd=0.75,linetype="dashed")+
    scale_y_continuous(limits = c(ymin,ymax))+
    scale_fill_manual(values=c("#FFFFF0","#00BBBB")) + stat_compare_means(label = "p.signif", method = "t.test", ref.group = "zBackground", method.args = list(alternative = "less"),symnum.args = list(cutpoints = c(0, 0.05, 1), symbols = c( "*", "ns")),hide.ns = TRUE,bracket.size = 0.1)+
    theme_bw(14) + theme(
        axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1), 
        legend.position = "none")+ 
    theme(text =element_text(size=8),axis.text.y=element_text(size=8),axis.text.x=element_text(size=8),
          panel.grid.major =element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(),
          axis.line = element_line(colour = "black"))
pdf(file = paste0(colnames(TF)[i],".pdf"), pointsize=8,width=8,height=3)

grid.draw(p1)
dev.off()
}
write.table(A,'pvalue.txt',sep='\t',quote=FALSE,col.names=TRUE,row.names=TRUE)
B=A
for (i in 1:30)
{
temp=order(A[,i])
B[,i]=A[,i]*38/temp
}
write.table(B,'qvalue.txt',sep='\t',quote=FALSE,col.names=TRUE,row.names=TRUE)
