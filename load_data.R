# LOAD DATA
twitter <- readLines("./final/en_US/en_US.twitter.txt", encoding = "UTF-8")
blogs <- readLines("./final/en_US/en_US.blogs.txt", encoding = "UTF-8")
con <- file("./final/en_US/en_US.news.txt", open = "rb")
news <- readLines(con, encoding = "UTF-8")
close(con)
