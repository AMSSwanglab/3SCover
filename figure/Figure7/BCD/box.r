library(readxl)
library(ggplot2)
TF=read_excel("sg.xlsx")

pdf(file='Rel.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Rel,fill=assignment))+geom_boxplot()+
scale_y_continuous(limits = c(0,4))+
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(14) + theme(axis.text.y = element_text(size=16),
    axis.text.x = element_text(size=16, angle = 90, hjust = 1, vjust = 1), 
    legend.position = "none", text =element_text(size=30),panel.grid =element_blank(), axis.text=element_text(size=30))
p
dev.off()
pdf(file='Myod1.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Myod1,fill=assignment))+geom_boxplot()+
scale_y_continuous(limits = c(0,4))+
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(14) + theme(axis.text.y = element_text(size=16),
    axis.text.x = element_text(size=16, angle = 90, hjust = 1, vjust = 1), 
    legend.position = "none",text =element_text(size=30),panel.grid =element_blank(), axis.text=element_text(size=30))
p
dev.off()

pdf(file='Pou2f1.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Pou2f1,fill=assignment),)+geom_boxplot()+
scale_y_continuous(limits = c(0,4))+
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(14) + theme(axis.text.y = element_text(size=16),
    axis.text.x = element_text(size=16, angle = 90, hjust = 1, vjust = 1), 
    legend.position = "none",text =element_text(size=30),panel.grid =element_blank(), axis.text=element_text(size=30))
p
dev.off()

setwd("E:\\mine\\mine\\work\\CORE_TF\\work-1-30TF\\day_by_day\\safeguard\\3rd\\reprogramming")
TF=read_excel("sg.xlsx",sheet = "Sheet2")
X = data.matrix(TF)
X = X[,-1]
X = X[,-1]
X=X[,-1]
C= cor(X,X)
pheatmap(C)
CC=data.frame(C)
pdf(file='Myod1.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Myod1,fill=assignment),)+geom_boxplot()+
#scale_y_continuous(limits = c(0,50))
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(14) + theme(
    axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1), 
    legend.position = "none")
p + theme(text =element_text(size=30),axis.text=element_text(size=30),axis.text.x=element_text(size=20),
           panel.grid.major =element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(),
           axis.line = element_line(colour = "black"))
dev.off()



pdf(file='Myod1.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Myod1,fill=assignment),)+geom_boxplot()+
#scale_y_continuous(limits = c(0,50))
  scale_fill_brewer(palette = "Spectral") +scale_y_continuous(limits = c(0,4))+
  theme_bw(14) + theme(
    axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1), 
    legend.position = "none")
p + theme(text =element_text(size=30),axis.text=element_text(size=30),axis.text.x=element_text(size=20),
           panel.grid.major =element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(),
           axis.line = element_line(colour = "black"))
dev.off()





pdf(file='Zfp580.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Zfp580,fill=assignment),)+geom_boxplot()+
#scale_y_continuous(limits = c(0,50))
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(14) + theme(
    axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1), 
    legend.position = "none")
p + theme(text =element_text(size=30),axis.text=element_text(size=30),axis.text.x=element_text(size=20),
           panel.grid.major =element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(),
           axis.line = element_line(colour = "black"))
dev.off()

setwd("E:\\mine\\mine\\work\\CORE_TF\\work-1-30TF\\day_by_day\\safeguard\\3rd\\reprogramming")
TF=read_excel("sg.xlsx")

pdf(file='Myt1l.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Myt1l,fill=assignment),)+geom_boxplot()+
#scale_y_continuous(limits = c(0,50))
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(14) + theme(
    axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1), 
    legend.position = "none")
p + theme(text =element_text(size=30),axis.text=element_text(size=30),axis.text.x=element_text(size=20),
           panel.grid.major =element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(),
           axis.line = element_line(colour = "black"))
dev.off()
pdf(file='MYT1L.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Myt1l,fill=assignment),)+geom_boxplot()+
#scale_y_continuous(limits = c(0,50))
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(14) + theme(
    axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1), 
    legend.position = "none")
p + theme(text =element_text(size=60),axis.text=element_text(size=60),axis.text.x=element_text(size=16))
dev.off()
pdf(file='Hoxa10.pdf',pointsize=16)
p<-ggplot(data = TF,aes(assignment,Hoxa10,fill=assignment),)+geom_boxplot()+
#scale_y_continuous(limits = c(0,50))
  scale_fill_brewer(palette = "Spectral") +
  theme_bw(14) + theme(
    axis.text.x = element_text(angle = 30, hjust = 1, vjust = 1), 
    legend.position = "none")
p + theme(text =element_text(size=60),axis.text=element_text(size=60),axis.text.x=element_text(size=16),
           panel.grid.major =element_blank(), panel.grid.minor = element_blank(),panel.background = element_blank(),
           axis.line = element_line(colour = "black"))
dev.off()
