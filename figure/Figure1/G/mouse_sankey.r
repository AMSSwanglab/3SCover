library(ggalluvial)

Sys.setenv(LANGUAGE = "en") 
options(stringsAsFactors = FALSE) 



```{r}
df <- read.table("easy_input.txt",sep = "\t",row.names = 1,header = T)
head(df)
```
mycol=c("A1"="#223D6C","A2"="#223D6C","A3"="#223D6C","A4"="#223D6C","A5"="#223D6C",
        "B1"="#D20A13","B2"="#D20A13","B3"="#D20A13","B4"="#D20A13","B5"="#D20A13",
        "C1"="#FFD121","C2"="#FFD121","D1"="#088247","D2"="#088247","D3"="#088247",
        "D4"="#088247","D5"="#088247","E1"="#11AA4D","E2"="#11AA4D","E3"="#11AA4D",
        "G1"="#58CDD9","G2"="#58CDD9","G3"="#58CDD9","G4"="#58CDD9","G5"="#58CDD9",
        "F1"="#5D90BA","F2"="#5D90BA","F3"="#5D90BA","F4"="#5D90BA","F5"="#5D90BA",
        "F6"="#5D90BA","F7"="#5D90BA","F8"="#5D90BA","F9"="#5D90BA","H1"="#029149",
        "H2"="#029149","H3"="#029149","A"="#7CC767","B"="#D73027","C"="#F46D43",
        "D"="#FDAE61","E"="#FEE090","F"="#E0F3F8","G"="#ABD9E9","H"="#74ADD1")
mycol=c("A1"="#7CC767","A2"="#7CC767","A3"="#7CC767","A4"="#7CC767","A5"="#7CC767",
        "B1"="#D73027","B2"="#D73027","B3"="#D73027","B4"="#D73027","B5"="#D73027",
        "C1"="#F46D43","C2"="#F46D43","D1"="#FDAE61","D2"="#FDAE61","D3"="#FDAE61",
        "D4"="#FDAE61","D5"="#FDAE61","E1"="#FEE090","E2"="#FEE090","E3"="#FEE090",
        "G1"="#ABD9E9","G2"="#ABD9E9","G3"="#ABD9E9","G4"="#ABD9E9","G5"="#ABD9E9",
        "F1"="#E0367A","F2"="#E0367A","F3"="#E0367A","F4"="#E0367A","F5"="#E0367A",
        "F6"="#E0367A","F7"="#E0367A","F8"="#E0367A","F9"="#E0367A","H1"="#74ADD1",
        "H2"="#74ADD1","H3"="#74ADD1","A"="#7CC767","B"="#D73027","C"="#F46D43",
        "D"="#FDAE61","E"="#FEE090","F"="#E0367A","G"="#ABD9E9","H"="#74ADD1")
mycol=c("A1"=col[1],"A2"=col[1],"A3"=col[1],"A4"=col[1],"A5"=col[1],
        "B1"=col[2],"B2"=col[2],"B3"=col[2],"B4"=col[2],"B5"=col[2],
        "C1"=col[3],"C2"=col[3],"D1"=col[4],"D2"=col[4],"D3"=col[4],
        "D4"=col[4],"D5"=col[4],"E1"=col[5],"E2"=col[5],
        "E3"=col[5],
        "G1"=col[7],"G2"=col[7],"G3"=col[7],"G4"=col[7],"G5"=col[7],
        "F1"=col[6],"F2"=col[6],"F3"=col[6],"F4"=col[6],"F5"=col[6],
        "F6"=col[6],"F7"=col[6],"F8"=col[6],"F9"=col[6],"H1"=col[8],
        "H2"=col[8],"H3"=col[8],"A"=col[1],"B"=col[2],"C"=col[3],
        "D"=col[4],"E"=col[5],"F"=col[6],"G"=col[7],"H"=col[8])
mycol=c("A1"="#95C591","A2"="#95C591","A3"="#95C591","A4"="#95C591","A5"="#95C591",
        "B1"="#D3434D","B2"="#D3434D","B3"="#D3434D","B4"="#D3434D","B5"="#D3434D",
        "C1"="#411D63","C2"="#411D63","D1"="#3E586F","D2"="#3E586F","D3"="#3E586F",
        "D4"="#3E586F","D5"="#3E586F","E1"="#099EB2","E2"="#099EB2","E3"="#099EB2",
        "G1"="#A6A4D3","G2"="#A6A4D3","G3"="#A6A4D3","G4"="#A6A4D3","G5"="#A6A4D3",
        "F1"="#E59CA5","F2"="#E59CA5","F3"="#E59CA5","F4"="#E59CA5","F5"="#E59CA5",
        "F6"="#E59CA5","F7"="#E59CA5","F8"="#E59CA5","F9"="#E59CA5","H1"="#155A9B",
        "H2"="#155A9B","H3"="#155A9B","A"="#95C591","B"="#D3434D","C"="#411D63",
        "D"="#3E586F","E"="#099EB2","F"="#E59CA5","G"="#A6A4D3","H"="#155A9B")

UCB_lodes <- to_lodes_form(df[,1:ncol(df)],
                           axes = 1:ncol(df),
                           id = "Cohort")
dim(UCB_lodes)

head(UCB_lodes)
tail(UCB_lodes)
{r,fig.width=6,fig.height=12}
ggplot(UCB_lodes,
       aes(x = x, stratum = stratum, alluvium = Cohort,
           fill = stratum, label = stratum)) +
  scale_x_discrete(expand = c(0, 0)) + 
  geom_flow(width = 1/3) + 
  geom_stratum(alpha = .9,width = 1/5) + 
  geom_text(stat = "stratum", size = 2,color="black") + 
  scale_fill_manual(values = mycol) +
  
  xlab("") + ylab("") +
  theme_bw() + 
  theme(panel.grid =element_blank()) + 
  theme(panel.border = element_blank()) + 
  theme(axis.line = element_blank(),axis.ticks = element_blank(),axis.text = element_blank()) + #去掉坐标轴
  ggtitle("")+
  guides(fill = FALSE) 

ggsave("sankey3_1.pdf")
