
#library(plyr)
library(jsonlite)
#library(dplyr)
#library(ffbase)
#library(stringr)
#library(BBmisc)

##stream_in, stream_out {jsonlite}
##Streaming JSON input/output


#myfile<-"./yelp_dataset/yelp_academic_dataset_review.json"
myfile<-"./yelp_dataset/yelp_academic_dataset_user.json"


con_out <- file('user.RData', open = "wb")
stream_in(file(myfile), handler = function(df){
    stream_out(df, con_out)
})
close(con_out)



