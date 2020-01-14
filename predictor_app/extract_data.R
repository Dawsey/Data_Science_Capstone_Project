
url <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"

temp <- tempfile()
download.file(url, temp)
data <- read.table(unz(temp, "final/en_US/en_US.blogs.txt"))
unlink(temp)

unzip(zipfile = "./Data/Raw_Data", exdir = "./Data")

library(readr)
tweets <- read_lines("./Data/final/en_US/en_US.twitter.txt", skip=0)
blogs <- read_lines("./Data/final/en_US/en_US.blogs.txt", skip = 0)
news <- read_lines("./Data/final/en_US/en_US.news.txt", skip = 0)
