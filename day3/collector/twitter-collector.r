# run every hour
## CRON JOB (in one line)
# 0 * * * * 
# R CMD BATCH ~/Dropbox/CSSProposalAttention/code/twitter-collector.r 
# ~/Dropbox/CSSProposalAttention/code/twitter-collector.log

setwd("~/Dropbox/CSSProposalAttention")
library(ROAuth)
library(streamR)
library(netdemR)
Sys.setlocale("LC_ALL", 'en_US.UTF-8')

# load API token
load("code/credentials/twitter-token.Rdata")

# file where tweets will be stored
filename <- paste("~/tweets/germany_", Sys.time(), ".json", sep="")
filename <- gsub(" |-|:", "_", filename) ## this line replaces spaces,
## colons and hyphens with underscores in the file name

# reading list of keywords
keywords <- scan("data/social_media/germany-keywords.txt",
                 what="character", sep="\n", encoding='utf-8')

# list of accounts to follow (run this once only)
# d <- read.csv("data/social_media/Germany-TW-FB-accounts.csv", stringsAsFactors = F)
# pols <- getUsersBatch(screen_names = d$screen_name[d$source=="Twitter"],
#           oauth_folder="code/credentials")
follow <- c("17675072", "14341194", "56767791", "28066013", "186552155", 
            "35562287", "20429858", "1273010575", "14553288", "631175576", 
            "122104353", "26458162", "24694296", "39475170", "21107582", 
            "844081278", "44101578")

# connecting to Streaming API
filterStream(file=filename, track=keywords, follow=follow,
             oauth=my_oauth, timeout=3590)

# counting lines
tweets <- system(paste("wc -l", filename), intern=TRUE)
tweets <- as.numeric(gsub('^([0-9]{1,7}) /home.*', tweets, repl="\\1"))

# counting mentions of each keywords
tw <- parseTweets(filename, simplify=TRUE)
counts <- c()
for (kw in keywords){
  counts <- c(counts,
              sum(grepl(kw, tw$text, ignore.case=TRUE)))
}

write.table(data.frame(matrix(c(filename, tweets, counts), ncol=length(keywords)+2)),
            file="data/social_media/germany-twitter-counts.csv",
            sep=",", append=TRUE, row.names=FALSE, col.names=FALSE)

# writing to file with tweets for the day
dayfile <- paste("~/tweets/germany_", Sys.Date(), ".json", sep="")
filename <- gsub(" |-|:", "_", filename) ## this line replaces spaces,
system(paste("cat", filename, ">>", dayfile))

# deleting file
system(paste("rm", filename))

