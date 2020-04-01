library(VennDiagram)
venn.plot <- venn.diagram(
  x = list(
    Human = 1:30,
    Mouse = 27:56),
  filename = "Venny11.tiff",
  resolution = 1200,
  lwd = 4,
  height = 3000, width = 3000,
  main.fontfamily = "serif",
  col = 'transparent',
  fill = c("orange", "#22BBBB"),
  alpha = 0.75,
  label.col = "white",
  cex = 2,
  sub.fontfamily = "serif",
  fontfamily = "serif",
  fontface = "bold",
  cat.col = c("orange", "#22BBBB"),
  cat.cex = 1.7,
  cat.fontfamily = "serif",
  cat.fontface = "bold",
  cat.dist = c(0.03, 0.03),
  cat.pos = c(12, 0)
);