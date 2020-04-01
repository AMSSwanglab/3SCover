library(ggplot2)
library(readxl)
library(VennDiagram)
BBTF <- read_excel("complexity.xlsx", sheet = "comp",col_names = FALSE)
allTF <- read_excel("complexity.xlsx", sheet = "notcomp",col_names = FALSE)
s = 'number of enhancer in safeguard TF and other TF'
A = BBTF[,3]
A=data.matrix(A)
B = allTF[,3]
B=data.matrix(B)
n1 = length(A)
n2 = length(B)
mergename = c(rep('safeguard TF',n1),rep('other TF',n2))
merge = c(t(A),t(B))
TF = data.frame(Name = mergename,regulatery_complexity = merge)
pdf(file='number_of_enhancer_in_BBTF_gene.pdf',family="GB1",pointsize=16)
p<-ggplot(data = TF,aes(x = Name,y = regulatery_complexity))+geom_boxplot(aes(fill = Name))+scale_y_continuous(limits = c(0,50))+scale_fill_manual(values=c("#00BBBB","#FFFFF0"))
p1=p + theme(text =element_text(size=60),axis.text=element_text(size=60),axis.text.x=element_text(size=16))
dev.off()

