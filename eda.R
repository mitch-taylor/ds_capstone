### EDA
library(tm); library(tokenizers); library(dplyr)

# load data
# setwd("C:/Users/MT84249/Desktop/personal/coursera/capstone")
setwd("~/files/data_science/r/10_capstone")

# load data
load_data <- function(filename) {
    readLines(paste0("./final/en_US/", filename), 
              encoding = "UTF-8", skipNul=TRUE)
}
#twitter <- load_data("en_US.twitter.txt")
blogs <- load_data("en_US.blogs.txt")
#news <- load_data("en_US.news.txt")

# sample
sample <- sample(blogs, 20000, replace=FALSE)
rm(blogs)

# Overall stats
generate_stats <- function(indat) {
    print(paste(deparse(substitute(indat)), "has", length(indat), "entries."))
    total_words <- sapply(gregexpr("\\w+", sample), length) + 1
    print(paste("A summary of the character count is provided below."))
    summary(total_words)
} 
generate_stats(sample)

# clean data
sample_corpus <- VCorpus(VectorSource(blogs)) %>%
    tm_map(content_transformer(tolower)) %>%
    tm_map(content_transformer(removePunctuation))

# Get diversity of each type of text
tdm <- TermDocumentMatrix(sample_corpus)
freqmatrix <- inspect(tdm)
freqmatrix <- data.frame(word = rownames(freqmatrix), freq = rowSums(freqmatrix)) %>%
    arrange(desc(freq))
unique <- nrow(freqmatrix)
total <- sum(freqmatrix$freq)
diversity <- unique / sqrt(2 * total)

#diversity = number unique words / sqrt ( 2 * total words)


# output some charts and stats on the word distribution - plot against
# that rule of thumb

breakNb <- 1:d[1,]$freq
hist(d$freq, breaks=breakNb, freq=FALSE, col="lightgreen", border="black",
     main="Distribution of frequencies", xlab="words frequencies")

barplot(d[1:30,]$percent, names.arg=d[1:30,]$word, col="lightblue", las=2,
        main="30 most frequent words", ylab="word frequencies (%)")




