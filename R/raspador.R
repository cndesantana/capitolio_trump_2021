library(rtweet)

terms <- c("Trump","Capitolio","Pence","Biden","impeachment")

df <- data.frame()
for(t in terms){
 cat(t,sep="\n")
 tw <- search_tweets(t,n=20000,retryonratelimit=TRUE,include_rts = FALSE,type="mixed")
 tw$term <- rep(t,nrow(tw))
 df <- rbind(df, tw)
 saveRDS(df,"tweets_trump.rds")
}
