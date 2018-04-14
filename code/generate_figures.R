library(data.table)
library(png)

VERSION <- 'prototype_v1'
FILE_PATH <- sprintf('../data/%s', VERSION)


for (i in 1:10) {

  file_name <- sprintf('%s_%d', VERSION, i)
  
  # create random data
  y <- round(runif(10), 3)
  fwrite(list(y=y),  sprintf('%s/labels/%s.csv', FILE_PATH, file_name))  
  
  # create figure
  jpeg(sprintf('%s/figures/%s.jpeg', FILE_PATH, file_name))
  plot(y, ylim=c(0,1))
  dev.off()
  
}

