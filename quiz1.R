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
