
library(ggplot2)
library(mongolite)
library(dplyr)

crimes=data.table::fread("crimes.csv")


connection_string="mongodb://localhost:27017/?tls=false&readPreference=primary"
my_collection = mongo(collection = "crimes", db = "chicago",url=connection_string)
my_collection$insert(crimes)
my_collection$count()
my_collection$iterate()$one()
df <- as.data.frame(my_collection$find())
head(df)

length(my_collection$distinct("Primary Type"))

my_collection$aggregate('[{"$group":{"_id":"$Location Description", "Count": {"$sum":1}}}]')%>%na.omit()%>%
arrange(desc(Count))%>%head(10)%>%
ggplot(aes(x=reorder(`_id`,Count),y=Count))+

geom_bar(stat="identity",color='skyblue',fill='#b35900')+geom_text(aes(label = Count), color = "blue") +coord_flip()+xlab("Location Description")

crimes=my_collection$find('{}', fields = '{"_id":0, "Primary Type":1,"Year":1}')
crimes%>%group_by("Primary Type")%>%summarize(Count=n())%>%arrange(desc(Count))%>%head(4)

