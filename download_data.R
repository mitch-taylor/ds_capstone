# DOWNLOAD DATA
setwd("~/files/data_science/r/10_capstone")
#setwd("C:/Users/MT84249/Desktop/personal/coursera/capstone")
src <- "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip"
download.file(src, "swiftkey_data.zip")
unzip("swiftkey_data.zip")
