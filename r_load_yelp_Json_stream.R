# Reads Yelp data in JSON format and saves the resulting data.frames in RData files.

  library(jsonlite)


business.file <- "./yelp_dataset/yelp_academic_dataset_business.json"

business <- stream_in(file(business.file))

save(business,file='business.RData')


rm(business)

checkin.file <- "./yelp_dataset/yelp_academic_dataset_checkin.json"

checkin <- stream_in(file(checkin.file))

save(checkin,file='checkin.RData')

rm(checkin)


tip.file <- "./yelp_dataset/yelp_academic_dataset_tip.json"

tip <- stream_in(file(tip.file))

save(tip,file='tip.RData')

rm(tip)

