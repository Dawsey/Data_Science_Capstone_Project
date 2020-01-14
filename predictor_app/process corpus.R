library(quanteda)
library(gridExtra)
library(dplyr)
library(data.table)

len.prop <- 0.3 # Length proportion - i.e. 30% sample

# Randomly sample the data 30% of each set
corp_blogs <- corpus(blogs[sample(length(blogs), length(blogs) * len.prop)]) 
corp_news <- corpus(news[sample(length(news), length(news) * len.prop)])
corp_tweets <- corpus(tweets[sample(length(tweets), length(tweets) * len.prop)])

# corp_blogs <- corpus(blogs[sample(length(blogs), 400000)])
# corp_news <- corpus(news[sample(length(news), 400000)])
# corp_tweets <- corpus(tweets[sample(length(tweets), 400000)])

# Add in the document variables for the document source information 
docvars(corp_blogs, 'source') <- "blogs"
docvars(corp_news, 'source') <- "news"
docvars(corp_tweets, 'source') <- "tweets"

# Combine the sampled corpus
multi_corp <- corp_blogs + corp_news + corp_tweets

# Prepare the Document Feature Matrices for 2, 3 and 4 n-grams:
dfmat_multi.2 <- dfm(multi_corp, ngrams = 2, remove_numbers = TRUE, remove_punct = TRUE)
dfmat_multi.3 <- dfm(multi_corp, ngrams = 3, remove_numbers = TRUE, remove_punct = TRUE)
dfmat_multi.4 <- dfm(multi_corp, ngrams = 4, remove_numbers = TRUE, remove_punct = TRUE)

# Retuen the top 200k most frequent n-grams:
multi_top.2_gram <- topfeatures(dfmat_multi.2, 200000)
multi_top.3_gram <- topfeatures(dfmat_multi.3, 200000)
multi_top.4_gram <- topfeatures(dfmat_multi.4, 200000)

termFreq2.multi <- data.frame(ngram = names(multi_top.2_gram), 
                              frequency = multi_top.2_gram)
termFreq2.multi <- termFreq2.multi %>% arrange(ngram)

termFreq3.multi <- data.frame(ngram = names(multi_top.3_gram), 
                              frequency = multi_top.3_gram)
termFreq3.multi <- termFreq3.multi %>% arrange(ngram)

termFreq4.multi <- data.frame(ngram = names(multi_top.4_gram), 
                              frequency = multi_top.4_gram)
termFreq4.multi <- termFreq4.multi %>% arrange(ngram)

# Prepare a combined list object:
comb.list <- list(termFreq2.multi, 
                  termFreq3.multi, 
                  termFreq4.multi)

# Save the model to the shiny app directory
save(comb.list, file = "./predictor_app/combi_list.Rds")
