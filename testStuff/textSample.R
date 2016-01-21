################# ~~~~~~~~~~~~~~~~~ ######## ~~~~~~~~~~~~~~~~~ #################
##                                                                            ##
##                        Data Science Capstone Project                       ##
##                                                                            ##            
##                 Christian A. Schmidt (http://defrox.com)                   ##
##                                                                            ##
##           Github Repo: https://github.com/defrox/dscp                      ##
##                                                                            ##
################# ~~~~~~~~~~~~~~~~~ ######## ~~~~~~~~~~~~~~~~~ #################


## Loading the original data set
blogs <- readLines("./final/en_US/en_US.blogs.txt", encoding = "UTF-8", skipNul=TRUE)
news <- readLines("./final/en_US/en_US.news.txt", encoding = "UTF-8", skipNul=TRUE)
twitter <- readLines("./final/en_US/en_US.twitter.txt", encoding = "UTF-8", skipNul=TRUE)

## Generating a random sapmle of all sources
sampleTwitter <- sample(twitter, 150000)
sampleNews <- sample(news, 150000)
sampleBlogs <- sample(blogs, 150000)
textSample <- c(sampleTwitter,sampleNews,sampleBlogs)

## Save sample
writeLines(textSample, "./bigTextSample.txt")
