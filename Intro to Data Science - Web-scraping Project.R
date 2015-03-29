# Get the data

install.packages("rvest")
library(rvest)
LifeOfPi_movie <- html("http://www.imdb.com/title/tt0454876/")

# Extract the rating:

LifeOfPi_movie %>% 
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()

# We get: [1] 8

# Extract the cast: 
  
LifeOfPi_movie %>%
  html_nodes("#titleCast .itemprop span") %>%
  html_text()

# We get: 

[1] "Suraj Sharma"         "Irrfan Khan"          "Ayush Tandon"         "Gautam Belur"        
[5] "Adil Hussain"         "Tabu"                 "Ayaan Khan"           "Mohd. Abbas Khaleeli"
[9] "Vibish Sivakumar"     "Rafe Spall"           "Gérard Depardieu"     "James Saito"         
[13] "Jun Naito"            "Andrea Di Stefano"    "Shravanthi Sainath"  

