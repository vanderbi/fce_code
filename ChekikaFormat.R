install.packages("tidyverse")
library("tidyverse")

# dt1 <-read_tsv("C://Users//kvand//Dropbox//_FCE_Working_Data//__Price//PHY_Price_005//data/PHY_Price_005.txt",
# col_types=cols(
#   SITENAME = col_character(),
#   Date = col_character(),
#   Time = col_time("%H:%M"),
#   XVEL = col_double(),
#   YVEL = col_double(),
#   ZVEL = col_double(),
#   VSDX = col_double(),
#   VSDY = col_double(),
#   VSDZ = col_double(),
#   SNRX = col_double(),
#   SNRY = col_double(),
#   SNRZ = col_double(),
#   WaterTemp = col_double(),
#   Res_WFlowSpeed = col_double(),
#   WFlowdir = col_double()
# ))

df2 <- read.delim("C://Users//kvand//Dropbox//_FCE_Working_Data//__Price//PHY_Price_005//data/PHY_Price_005_new.txt", sep = "\t", header = TRUE)
#ggplot(data = df2) + geom_point(mapping = aes(x=Date, y = ZVEL, color = "green"))
df2$Date <- as.Date((as.character(df2$Date)), format = "%m/%d/%Y")



df3 <- read.csv("C://Users//kvand//Dropbox//_FCE_Working_Data//__Price//PHY_Price_005//data/PHY_Price_005_old.txt", header = TRUE, sep = ",")
df3$Date <- as.Date((as.character(df3$Date)), format = "%Y-%m-%d")

df4 <-rbind(df3,df2)
df4
write.csv(df4,"C://Users//kvand//Dropbox//_FCE_Working_Data//__Price//PHY_Price_005//data/PHY_Price_005.txt", quote = FALSE, row.names = FALSE)

maxDate <-max(df4$Date)
maxDate
nrow(df4)
