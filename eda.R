### EDA
library(tm); library(tokenizers)

# load data
source("./load_data.R")

# as corpus
sample <- VectorSource(blogs[1:200])
sample_corpus <- Corpus(sample)

# clean corpus
sample_corpus <- tm_map(sample_corpus, content_transformer(tolower))
sample_corpus <- tm_map(sample_corpus, content_transformer(removePunctuation))
#sample_corpus <- tm_map(sample_corpus, removeNumbers)
#sample_corpus <- tm_map(sample_corpus, removeWords, stopwords("english"))

inspect(sample_corpus)

# term document matrix
tdm <- TermDocumentMatrix(sample_corpus)
dtm <- DocumentTermMatrix(sample_corpus)
inspect(tdm)
findFreqTerms(tdm, 10)
findAssocs(tdm, "love", 0.5)
rowsum(tdm[1])
data.frame(tdm$dimnames$Terms, rowsum(tdm$v))
# charts

# synonyms 

# charts


sample_corpus[[5]]


#ideas - use synonym mapping
# how to evluate predictions - classification accuracy?
# sampling, combining documents- similarities / differences?
ngrams(blogs[5], 2)

TermDocMatrix()
(NGramTokenizer)

#TermDocMatrix(col, control = list(tokenize = NGramTokenizer))
#or a tokenizer from the OpenNLP toolkit (via openNLP’s tokenize function)
#R> TermDocMatrix(col, control = list(tokenize = tokenize))

#Similarly, we can use external modules for all other processing steps (mainly via internal
#                                                                       calls to termFreq which generates a term frequency vector from a text document and gives
#                                                                       an extensive list of available control options), like stemming (e.g., the Weka stemmers via
#                                                                                                                                       the Snowball package), stopword removal (e.g., via custom stopword lists), or user supplied
#dictionaries (a method to restrict the generated terms in the term-document matrix).

wordStem()
stripWhitespace(acq[[10]])
tmTolower(acq[[10]])

mystopwords <- c("and", "for", "in", "is", "it", "not", "the", "to")
R> removeWords(acq[[10]], mystopwords)

tmMap(acq, removeWords, mystopwords)

library("wordnet")
R> synonyms("company")
replaceWords(acq[[10]], synonyms(dict, "company"), by = "company")
and for the whole collection, using tmMap():
    R> tmMap(acq, replaceWords, synonyms(dict, "company"), by = "company")

R> crudeTDM <- TermDocMatrix(crude, control = list(stopwords = TRUE))
R> (crudeTDMHighFreq <- findFreqTerms(crudeTDM, 10, Inf))
Data(crudeTDM)[1:10, crudeTDMHighFreq]

findAssocs(crudeTDM, "oil", 0.85)


