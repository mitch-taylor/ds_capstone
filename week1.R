### WEEK 1
library(tokenizers)

# READ IN DATA
setwd("C:/Users/MT84249/Desktop/personal/coursera/capstone")
twitter <- readLines("en_US.twitter.txt")
blogs <- readLines("en_US.blogs.txt")
con <- file("en_US.news.txt", open = "rb")
news <- readLines(con)
close(con)

### QUIZ WEEK 1

# file size
file.size("en_US.blogs.txt")

# length
length(twitter)

# max chars
max(nchar(twitter))
max(nchar(blogs))
max(nchar(news))

# contains word
length(grep("love", twitter)) / length(grep("hate", twitter))
twitter[grep("biostats", twitter)]
length(grep("A computer once beat me at chess, but it was no match for me at kickboxing", twitter))

# TOKENISATION
blogs[5]
tokenize_words(blogs[5])
tokenize_sentences(blogs[5])
tokenize_ngrams(blogs[5])
# PROFANITY FILTERING

# WORKING

