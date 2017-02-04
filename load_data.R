# LOAD DATA
twitter <- readLines("./final/en_US/en_US.twitter.txt")
blogs <- readLines("./final/en_US/en_US.blogs.txt")
con <- file("./final/en_US/en_US.news.txt", open = "rb")
news <- readLines(con)
close(con)

