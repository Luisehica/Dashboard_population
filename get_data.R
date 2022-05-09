library(rvest)

url = 'https://en.wikipedia.org/wiki/List_of_states_and_union_territories_of_India_by_population'


population <- url %>%
                read_html() %>%
                html_table
              
#Clean Data
#Normalize Columns
#Split Rank
#Number with rigth type, without , or sepecial symbols
#Percentage -> decimal


#