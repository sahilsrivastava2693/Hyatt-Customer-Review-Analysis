# Data Analysis for Hyatt Hotels
# Group Members - Paminder Chawla, Prayash Mukherjee, Rohan Fagwani, Sahil Srivastava, Yijie Zhu, Qiuyan Liu
setwd("C:/Users/Rohan M. Fagwani/Desktop/687 Data")
#Loading all the data
Feb02 <- read.csv('out-201402.csv', header = T)
May05 <- read.csv('out-201405.csv', header = T)
Aug05 <- read.csv('out-201408.csv', header = T)
Dec05 <- read.csv('out-201412.csv', header = T)

#Cleaning all the Data (Columns)
Feb <-data.frame(Feb02$CHECK_IN_DATE_C,Feb02$CHECK_OUT_DATE_C,Feb02$POV_CODE_C,Feb02$QUOTED_RATE_C,Feb02$PMS_ROOM_REV_USD_C,Feb02$PMS_TOTAL_REV_USD_C,Feb02$PMS_FOOD_BEVERAGE_REV_USD_C,Feb02$PMS_OTHER_REV_USD_C,Feb02$ROOM_TYPE_CODE_R,Feb02$ROOM_TYPE_DESCRIPTION_R,Feb02$LENGTH_OF_STAY_R,Feb02$GUEST_COUNTRY_R,Feb02$REVENUE_USD_R,Feb02$Age_Range_H,Feb02$Clublounge_Used_H,Feb02$Spa_Used_H,Feb02$Likelihood_Recommend_H,Feb02$Overall_Sat_H,Feb02$Guest_Room_H,Feb02$Tranquility_H,Feb02$Condition_Hotel_H,Feb02$Customer_SVC_H,Feb02$Staff_Cared_H,Feb02$Internet_Sat_H,Feb02$Check_In_H,Feb02$F.B_Overall_Experience_H,Feb02$Hotel.Name.Long_PL,Feb02$Hotel.Name.Short_PL,Feb02$City_PL,Feb02$State_PL,Feb02$US.Region_PL,Feb02$Postal.Code_PL,Feb02$Country_PL,Feb02$Sub.Continent_PL,Feb02$Property.Latitude_PL,Feb02$Property.Longitude_PL,Feb02$Guest.NPS.Goal_PL,Feb02$Relationship_PL,Feb02$All.Suites_PL,Feb02$Bell.Staff_PL,Feb02$Boutique_PL,Feb02$Business.Center_PL,Feb02$Casino_PL,Feb02$Conference_PL,Feb02$Convention_PL,Feb02$Dry.Cleaning_PL,Feb02$Elevators_PL,Feb02$Fitness.Center_PL,Feb02$Fitness.Trainer_PL,Feb02$Golf_PL,Feb02$Indoor.Corridors_PL,Feb02$Laundry_PL,Feb02$Limo.Service_PL,Feb02$Mini.Bar_PL,Feb02$Pool.Indoor_PL,Feb02$Pool.Outdoor_PL,Feb02$Regency.Grand.Club_PL,Feb02$Resort_PL,Feb02$Restaurant_PL,Feb02$Self.Parking_PL,Feb02$Shuttle.Service_PL,Feb02$Ski_PL,Feb02$Spa_PL,Feb02$Spa.services.in.fitness.center_PL,Feb02$Spa.online.booking_PL,Feb02$Spa.F.B.offering_PL,Feb02$Valet.Parking_PL,Feb02$NPS_Type)

May <- data.frame(May05$CHECK_IN_DATE_C,May05$CHECK_OUT_DATE_C,May05$POV_CODE_C,May05$QUOTED_RATE_C,May05$PMS_ROOM_REV_USD_C,May05$PMS_TOTAL_REV_USD_C,May05$PMS_FOOD_BEVERAGE_REV_USD_C,May05$PMS_OTHER_REV_USD_C,May05$ROOM_TYPE_CODE_R,May05$ROOM_TYPE_DESCRIPTION_R,May05$LENGTH_OF_STAY_R,May05$GUEST_COUNTRY_R,May05$REVENUE_USD_R,May05$Age_Range_H,May05$Clublounge_Used_H,May05$Spa_Used_H,May05$Likelihood_Recommend_H,May05$Overall_Sat_H,May05$Guest_Room_H,May05$Tranquility_H,May05$Condition_Hotel_H,May05$Customer_SVC_H,May05$Staff_Cared_H,May05$Internet_Sat_H,May05$Check_In_H,May05$F.B_Overall_Experience_H,May05$Hotel.Name.Long_PL,May05$Hotel.Name.Short_PL,May05$City_PL,May05$State_PL,May05$US.Region_PL,May05$Postal.Code_PL,May05$Country_PL,May05$Sub.Continent_PL,May05$Property.Latitude_PL,May05$Property.Longitude_PL,May05$Guest.NPS.Goal_PL,May05$Relationship_PL,May05$All.Suites_PL,May05$Bell.Staff_PL,May05$Boutique_PL,May05$Business.Center_PL,May05$Casino_PL,May05$Conference_PL,May05$Convention_PL,May05$Dry.Cleaning_PL,May05$Elevators_PL,May05$Fitness.Center_PL,May05$Fitness.Trainer_PL,May05$Golf_PL,May05$Indoor.Corridors_PL,May05$Laundry_PL,May05$Limo.Service_PL,May05$Mini.Bar_PL,May05$Pool.Indoor_PL,May05$Pool.Outdoor_PL,May05$Regency.Grand.Club_PL,May05$Resort_PL,May05$Restaurant_PL,May05$Self.Parking_PL,May05$Shuttle.Service_PL,May05$Ski_PL,May05$Spa_PL,May05$Spa.services.in.fitness.center_PL,May05$Spa.online.booking_PL,May05$Spa.F.B.offering_PL,May05$Valet.Parking_PL,May05$NPS_Type)
Aug <- data.frame(Aug05$CHECK_IN_DATE_C,Aug05$CHECK_OUT_DATE_C,Aug05$POV_CODE_C,Aug05$QUOTED_RATE_C,Aug05$PMS_ROOM_REV_USD_C,Aug05$PMS_TOTAL_REV_USD_C,Aug05$PMS_FOOD_BEVERAGE_REV_USD_C,Aug05$PMS_OTHER_REV_USD_C,Aug05$ROOM_TYPE_CODE_R,Aug05$ROOM_TYPE_DESCRIPTION_R,Aug05$LENGTH_OF_STAY_R,Aug05$GUEST_COUNTRY_R,Aug05$REVENUE_USD_R,Aug05$Age_Range_H,Aug05$Clublounge_Used_H,Aug05$Spa_Used_H,Aug05$Likelihood_Recommend_H,Aug05$Overall_Sat_H,Aug05$Guest_Room_H,Aug05$Tranquility_H,Aug05$Condition_Hotel_H,Aug05$Customer_SVC_H,Aug05$Staff_Cared_H,Aug05$Internet_Sat_H,Aug05$Check_In_H,Aug05$F.B_Overall_Experience_H,Aug05$Hotel.Name.Long_PL,Aug05$Hotel.Name.Short_PL,Aug05$City_PL,Aug05$State_PL,Aug05$US.Region_PL,Aug05$Postal.Code_PL,Aug05$Country_PL,Aug05$Sub.Continent_PL,Aug05$Property.Latitude_PL,Aug05$Property.Longitude_PL,Aug05$Guest.NPS.Goal_PL,Aug05$Relationship_PL,Aug05$All.Suites_PL,Aug05$Bell.Staff_PL,Aug05$Boutique_PL,Aug05$Business.Center_PL,Aug05$Casino_PL,Aug05$Conference_PL,Aug05$Convention_PL,Aug05$Dry.Cleaning_PL,Aug05$Elevators_PL,Aug05$Fitness.Center_PL,Aug05$Fitness.Trainer_PL,Aug05$Golf_PL,Aug05$Indoor.Corridors_PL,Aug05$Laundry_PL,Aug05$Limo.Service_PL,Aug05$Mini.Bar_PL,Aug05$Pool.Indoor_PL,Aug05$Pool.Outdoor_PL,Aug05$Regency.Grand.Club_PL,Aug05$Resort_PL,Aug05$Restaurant_PL,Aug05$Self.Parking_PL,Aug05$Shuttle.Service_PL,Aug05$Ski_PL,Aug05$Spa_PL,Aug05$Spa.services.in.fitness.center_PL,Aug05$Spa.online.booking_PL,Aug05$Spa.F.B.offering_PL,Aug05$Valet.Parking_PL,Aug05$NPS_Type)
Dec <- data.frame(Dec05$CHECK_IN_DATE_C,Dec05$CHECK_OUT_DATE_C,Dec05$POV_CODE_C,Dec05$QUOTED_RATE_C,Dec05$PMS_ROOM_REV_USD_C,Dec05$PMS_TOTAL_REV_USD_C,Dec05$PMS_FOOD_BEVERAGE_REV_USD_C,Dec05$PMS_OTHER_REV_USD_C,Dec05$ROOM_TYPE_CODE_R,Dec05$ROOM_TYPE_DESCRIPTION_R,Dec05$LENGTH_OF_STAY_R,Dec05$GUEST_COUNTRY_R,Dec05$REVENUE_USD_R,Dec05$Age_Range_H,Dec05$Clublounge_Used_H,Dec05$Spa_Used_H,Dec05$Likelihood_Recommend_H,Dec05$Overall_Sat_H,Dec05$Guest_Room_H,Dec05$Tranquility_H,Dec05$Condition_Hotel_H,Dec05$Customer_SVC_H,Dec05$Staff_Cared_H,Dec05$Internet_Sat_H,Dec05$Check_In_H,Dec05$F.B_Overall_Experience_H,Dec05$Hotel.Name.Long_PL,Dec05$Hotel.Name.Short_PL,Dec05$City_PL,Dec05$State_PL,Dec05$US.Region_PL,Dec05$Postal.Code_PL,Dec05$Country_PL,Dec05$Sub.Continent_PL,Dec05$Property.Latitude_PL,Dec05$Property.Longitude_PL,Dec05$Guest.NPS.Goal_PL,Dec05$Relationship_PL,Dec05$All.Suites_PL,Dec05$Bell.Staff_PL,Dec05$Boutique_PL,Dec05$Business.Center_PL,Dec05$Casino_PL,Dec05$Conference_PL,Dec05$Convention_PL,Dec05$Dry.Cleaning_PL,Dec05$Elevators_PL,Dec05$Fitness.Center_PL,Dec05$Fitness.Trainer_PL,Dec05$Golf_PL,Dec05$Indoor.Corridors_PL,Dec05$Laundry_PL,Dec05$Limo.Service_PL,Dec05$Mini.Bar_PL,Dec05$Pool.Indoor_PL,Dec05$Pool.Outdoor_PL,Dec05$Regency.Grand.Club_PL,Dec05$Resort_PL,Dec05$Restaurant_PL,Dec05$Self.Parking_PL,Dec05$Shuttle.Service_PL,Dec05$Ski_PL,Dec05$Spa_PL,Dec05$Spa.services.in.fitness.center_PL,Dec05$Spa.online.booking_PL,Dec05$Spa.F.B.offering_PL,Dec05$Valet.Parking_PL,Dec05$NPS_Type)

#Cleaning all the Data (Rows)
Feb <- Feb[-which(Feb$Feb02.NPS_Type == ""),]
May <- May[-which(May$May05.NPS_Type == ""),]
Aug <- Aug[-which(Aug$Aug05.NPS_Type == ""),]
Dec <- Dec[-which(Dec$Dec05.NPS_Type == ""),]

#Only United States
Feb <- Feb[(Feb$Feb02.Country_PL=="United States"),]
May <- May[(May$May05.Country_PL=="United States"),]
Aug <- Aug[(Aug$Aug05.Country_PL=="United States"),]
Dec <- Dec[(Dec$Dec05.Country_PL=="United States"),]

#Changing Column Labels
colnames(Feb) <- c("CHECK_IN_DATE_C","CHECK_OUT_DATE_C","POV_CODE_C","QUOTED_RATE_C","PMS_ROOM_REV_USD_C","PMS_TOTAL_REV_USD_C","PMS_FOOD_BEVERAGE_REV_USD_C","PMS_OTHER_REV_USD_C","ROOM_TYPE_CODE_R","ROOM_TYPE_DESCRIPTION_R","LENGTH_OF_STAY_R","GUEST_COUNTRY_R","REVENUE_USD_R","Age_Range_H","Clublounge_Used_H","Spa_Used_H","Likelihood_Recommend_H","Overall_Sat_H","Guest_Room_H","Tranquility_H","Condition_Hotel_H","Customer_SVC_H","Staff_Cared_H","Internet_Sat_H","Check_In_H","F.B_Overall_Experience_H","Hotel.Name.Long_PL","Hotel.Name.Short_PL","City_PL","State_PL","US.Region_PL","Postal.Code_PL","Country_PL","Sub.Continent_PL","Property.Latitude_PL","Property.Longitude_PL","Guest.NPS.Goal_PL","Relationship_PL","All.Suites_PL","Bell.Staff_PL","Boutique_PL","Business.Center_PL","Casino_PL","Conference_PL","Convention_PL","Dry.Cleaning_PL","Elevators_PL","Fitness.Center_PL","Fitness.Trainer_PL","Golf_PL","Indoor.Corridors_PL","Laundry_PL","Limo.Service_PL","Mini.Bar_PL","Pool.Indoor_PL","Pool.Outdoor_PL","Regency.Grand.Club_PL","Resort_PL","Restaurant_PL","Self.Parking_PL","Shuttle.Service_PL","Ski_PL","Spa_PL","Spa.services.in.fitness.center_PL","Spa.online.booking_PL","Spa.F.B.offering_PL","Valet.Parking_PL","NPS_Type")
colnames(May) <- c("CHECK_IN_DATE_C","CHECK_OUT_DATE_C","POV_CODE_C","QUOTED_RATE_C","PMS_ROOM_REV_USD_C","PMS_TOTAL_REV_USD_C","PMS_FOOD_BEVERAGE_REV_USD_C","PMS_OTHER_REV_USD_C","ROOM_TYPE_CODE_R","ROOM_TYPE_DESCRIPTION_R","LENGTH_OF_STAY_R","GUEST_COUNTRY_R","REVENUE_USD_R","Age_Range_H","Clublounge_Used_H","Spa_Used_H","Likelihood_Recommend_H","Overall_Sat_H","Guest_Room_H","Tranquility_H","Condition_Hotel_H","Customer_SVC_H","Staff_Cared_H","Internet_Sat_H","Check_In_H","F.B_Overall_Experience_H","Hotel.Name.Long_PL","Hotel.Name.Short_PL","City_PL","State_PL","US.Region_PL","Postal.Code_PL","Country_PL","Sub.Continent_PL","Property.Latitude_PL","Property.Longitude_PL","Guest.NPS.Goal_PL","Relationship_PL","All.Suites_PL","Bell.Staff_PL","Boutique_PL","Business.Center_PL","Casino_PL","Conference_PL","Convention_PL","Dry.Cleaning_PL","Elevators_PL","Fitness.Center_PL","Fitness.Trainer_PL","Golf_PL","Indoor.Corridors_PL","Laundry_PL","Limo.Service_PL","Mini.Bar_PL","Pool.Indoor_PL","Pool.Outdoor_PL","Regency.Grand.Club_PL","Resort_PL","Restaurant_PL","Self.Parking_PL","Shuttle.Service_PL","Ski_PL","Spa_PL","Spa.services.in.fitness.center_PL","Spa.online.booking_PL","Spa.F.B.offering_PL","Valet.Parking_PL","NPS_Type")
colnames(Aug) <- c("CHECK_IN_DATE_C","CHECK_OUT_DATE_C","POV_CODE_C","QUOTED_RATE_C","PMS_ROOM_REV_USD_C","PMS_TOTAL_REV_USD_C","PMS_FOOD_BEVERAGE_REV_USD_C","PMS_OTHER_REV_USD_C","ROOM_TYPE_CODE_R","ROOM_TYPE_DESCRIPTION_R","LENGTH_OF_STAY_R","GUEST_COUNTRY_R","REVENUE_USD_R","Age_Range_H","Clublounge_Used_H","Spa_Used_H","Likelihood_Recommend_H","Overall_Sat_H","Guest_Room_H","Tranquility_H","Condition_Hotel_H","Customer_SVC_H","Staff_Cared_H","Internet_Sat_H","Check_In_H","F.B_Overall_Experience_H","Hotel.Name.Long_PL","Hotel.Name.Short_PL","City_PL","State_PL","US.Region_PL","Postal.Code_PL","Country_PL","Sub.Continent_PL","Property.Latitude_PL","Property.Longitude_PL","Guest.NPS.Goal_PL","Relationship_PL","All.Suites_PL","Bell.Staff_PL","Boutique_PL","Business.Center_PL","Casino_PL","Conference_PL","Convention_PL","Dry.Cleaning_PL","Elevators_PL","Fitness.Center_PL","Fitness.Trainer_PL","Golf_PL","Indoor.Corridors_PL","Laundry_PL","Limo.Service_PL","Mini.Bar_PL","Pool.Indoor_PL","Pool.Outdoor_PL","Regency.Grand.Club_PL","Resort_PL","Restaurant_PL","Self.Parking_PL","Shuttle.Service_PL","Ski_PL","Spa_PL","Spa.services.in.fitness.center_PL","Spa.online.booking_PL","Spa.F.B.offering_PL","Valet.Parking_PL","NPS_Type")
colnames(Dec) <- c("CHECK_IN_DATE_C","CHECK_OUT_DATE_C","POV_CODE_C","QUOTED_RATE_C","PMS_ROOM_REV_USD_C","PMS_TOTAL_REV_USD_C","PMS_FOOD_BEVERAGE_REV_USD_C","PMS_OTHER_REV_USD_C","ROOM_TYPE_CODE_R","ROOM_TYPE_DESCRIPTION_R","LENGTH_OF_STAY_R","GUEST_COUNTRY_R","REVENUE_USD_R","Age_Range_H","Clublounge_Used_H","Spa_Used_H","Likelihood_Recommend_H","Overall_Sat_H","Guest_Room_H","Tranquility_H","Condition_Hotel_H","Customer_SVC_H","Staff_Cared_H","Internet_Sat_H","Check_In_H","F.B_Overall_Experience_H","Hotel.Name.Long_PL","Hotel.Name.Short_PL","City_PL","State_PL","US.Region_PL","Postal.Code_PL","Country_PL","Sub.Continent_PL","Property.Latitude_PL","Property.Longitude_PL","Guest.NPS.Goal_PL","Relationship_PL","All.Suites_PL","Bell.Staff_PL","Boutique_PL","Business.Center_PL","Casino_PL","Conference_PL","Convention_PL","Dry.Cleaning_PL","Elevators_PL","Fitness.Center_PL","Fitness.Trainer_PL","Golf_PL","Indoor.Corridors_PL","Laundry_PL","Limo.Service_PL","Mini.Bar_PL","Pool.Indoor_PL","Pool.Outdoor_PL","Regency.Grand.Club_PL","Resort_PL","Restaurant_PL","Self.Parking_PL","Shuttle.Service_PL","Ski_PL","Spa_PL","Spa.services.in.fitness.center_PL","Spa.online.booking_PL","Spa.F.B.offering_PL","Valet.Parking_PL","NPS_Type")

#Combining all the columns using RBind
Months <-rbind(Feb,May,Aug,Dec)

#New Data Frame for NPS Grouped by States
Months$State_PL <- state.abb[match(Months$State_PL,state.name)]
Months<-Months[!is.na(Months$State_PL),]
length(which(Months$NPS_Type=="Promoter"))
length(which(Months$NPS_Type=="Detractor"))
test<-Months[(Months$NPS_Type=="Promoter"),]
test2<-Months[(Months$NPS_Type=="Detractor"),]
test3<-Months[(Months$NPS_Type=="Passive"),]
num <- aggregate(which(Months$NPS_Type=="Promoter")~test$State_PL,test,length)
num
colnames(num) <- c("State","Promoter")
num <- num[order(num$State),]
num2 <- aggregate(which(test2$NPS_Type=="Detractor")~test2$State_PL,test2,length)
num2
colnames(num2) <- c("State","Detractor")
num2 <- num2[order(num2$State),]
num3 <- aggregate(which(test3$NPS_Type=="Passive")~test3$State_PL,test3,length)
num3
colnames(num3) <- c("State","Passive")
num3 <- num3[order(num3$State),]
NPState <- merge(num,num3,by="State")
NPState <- merge(NPState,num2,by="State")
NPState$Difference <- NPState$Promoter - NPState$Detractor
NPState$NPSTotal <- NPState$Detractor+NPState$Passive+NPState$Promoter
NPState$NPS <- (((NPState$Promoter/NPState$NPSTotal)*100) - ((NPState$Detractor/NPState$NPSTotal)*100))
NPState$Perc <- NPState$Passive/NPState$NPSTotal
NPState$PercNeg <- NPState$Detractor/NPState$NPSTotal

#Maps for USA Based
install.packages("ggplot2")
library(ggplot2)
install.packages("ggmap")
library(ggmap)
install.packages("maps")
library(maps)
NPState$State <- tolower(state.name[match(NPState$State,state.abb)])
us <- map_data("state")
map1 <- ggplot(NPState, aes(map_id = NPState$State))
map1 <- map1 + geom_map(map = us, color="greenyellow", aes(fill= NPState$NPS))
map1 <- map1 + expand_limits(x = us$long, y = us$lat)
map1 <- map1 + coord_map()
map1

#Question 2
numnew<- aggregate(which(test$NPS_Type=="Promoter")~test$State_PL+test$Likelihood_Recommend_H+test$Overall_Sat_H+test$Valet.Parking_PL+test$Tranquility_H+test$Internet_Sat_H+test$Property.Latitude_PL+test$Property.Longitude_PL+test$Condition_Hotel_H+test$Business.Center_PL+test$Fitness.Center_PL,test,mean)
num4<- aggregate(which(test$NPS_Type=="Promoter")~test$State_PL+test$Likelihood_Recommend_H, test, length)
FinalID <- Months[(Months$State_PL=="ID"),]
IDData<-data.frame(FinalID$State_PL,FinalID$Likelihood_Recommend_H, FinalID$Staff_Cared_H, FinalID$NPS_Type,FinalID$Tranquility_H,FinalID$Condition_Hotel_H,FinalID$Overall_Sat_H,FinalID$F.B_Overall_Experience_H,FinalID$Customer_SVC_H,FinalID$Internet_Sat_H)
num3 <- aggregate(.~IDData$FinalID.State_PL+IDData$FinalID.NPS_Type,IDData,mean)
colnames(num3)<-c("State_PL","NPS_Type","State","Likelihood_Recommend_H","Staff","Type","Tranquility_H","Condition_Hotel_H","Overall_Sat_H","F.B_Overall_Experience_H","Customer_SVC_H","Internet_Sat_H")
colnames(IDData)<-c("State","Likelihood_Recommend_H","Staff","Type","Tranquility_H","Condition_Hotel_H","Overall_Sat_H","F.B_Overall_Experience_H","Customer_SVC_H","Internet_Sat_H")
FinalND <- Months[(Months$State_PL=="RI"),]
NDdata<-data.frame(FinalND$State_PL,FinalND$Likelihood_Recommend_H,FinalND$Staff_Cared_H, FinalND$NPS_Type,FinalND$Tranquility_H,FinalND$Condition_Hotel_H,FinalND$Overall_Sat_H,FinalND$F.B_Overall_Experience_H,FinalND$Customer_SVC_H,FinalND$Internet_Sat_H)
num4 <- aggregate(.~NDdata$FinalND.State_PL+NDdata$FinalND.NPS_Type,NDdata,mean)
colnames(num4)<-c("State_PL","NPS_Type","State","Likelihood_Recommend_H","Staff", "Type","Tranquility_H","Condition_Hotel_H","Overall_Sat_H","F.B_Overall_Experience_H","Customer_SVC_H","Internet_Sat_H")
colnames(NDdata)<-c("State","Likelihood_Recommend_H","Staff", "Type","Tranquility_H","Condition_Hotel_H","Overall_Sat_H","F.B_Overall_Experience_H","Customer_SVC_H","Internet_Sat_H")
finalCompare <- rbind(num3,num4)
g1<-ggplot(finalCompare, aes(factor(State_PL), Tranquility_H , fill = NPS_Type)) + geom_bar(stat="identity", position = "dodge", color="black") + scale_fill_brewer(palette = "Set2") +theme(legend.position = "none")
g1

g2<-ggplot(finalCompare, aes(factor(State_PL), Condition_Hotel_H , fill = NPS_Type)) + geom_bar(stat="identity", position = "dodge", color="black") +  scale_fill_brewer(palette = "Set2") +theme(legend.position = "none")
g2
g3<-ggplot(finalCompare, aes(factor(State_PL), Customer_SVC_H, fill = NPS_Type)) +   geom_bar(stat="identity", position = "dodge", color="black") +  scale_fill_brewer(palette = "Set2")+theme(legend.position = "none")
g4<-ggplot(finalCompare, aes(factor(State_PL), Staff , fill = NPS_Type)) +  geom_bar(stat="identity", position = "dodge", color="black") +   scale_fill_brewer(palette = "Set2")+theme(legend.position = "none")#cas, conf,conv, resort, restaurantinstall.packages("cowplot")

library(cowplot)
plot_grid(g1,g2,g3,g4, ncol = 2, nrow = 2)
NDID1 <-NDID[!is.na(NDID$Tranquility_H),]
NDID <- rbind(IDData,NDdata)
NDID1 <-NDID[!is.na(NDID$Tranquility_H),]
NDID <- rbind(IDData,NDdata)

# Question 3 2 i guess

cor(NDID$Likelihood_Recommend_H,NDID$Overall_Sat_H)
ND
#	Scatter	plot:	x=overall	satisfaction,	y=likelihood	to	recommendation,	color=NPS	type
df	<- NDID[,	c("Likelihood_Recommend_H","Overall_Sat_H","Type")]
df$Likelihood_Recommend_H	<- df$Likelihood_Recommend_H	+	runif(nrow(df),	min=0,	max=1.1)
df$Overall_Sat_H	<- df$Overall_Sat_H	+	runif(nrow(df),	min=0,	max=1.1)
g8	<- ggplot(data=df,	aes(x=Overall_Sat_H))
g8	<- g8	+	geom_point(aes(y=Likelihood_Recommend_H,	color=Type))
g8


df1	<- NDID[,	c("Tranquility_H","Staff","Type")]
df1$Tranquility_H	<- df1$Tranquility_H	+	runif(nrow(df1),	min=0,	max=1.1)
df1$Staff	<- df1$Staff	+	runif(nrow(df1),	min=0,	max=1.1)
l	<- ggplot(data=df1,	aes(x=Staff))
l	<- l	+	geom_point(aes(y=Tranquility_H,	color=Type))
l

#Linear Modeling
lm<-lm(formula=Months$Likelihood_Recommend_H~ Months$Internet_Sat_H,data = Months)
summary(lm)

lm1<-lm(formula=Months$Likelihood_Recommend_H~ Months$Tranquility_H,data = Months)
summary(lm1)

lm2<-lm(formula=Months$Likelihood_Recommend_H~ Months$Spa_Used_H,data = Months)
summary(lm2)

lm3<-lm(formula=Months$Likelihood_Recommend_H~ Months$Condition_Hotel_H,data = Months)
summary(lm3)

lm4<-lm(formula=Months$Likelihood_Recommend_H~ Months$Staff_Cared_H,data = Months)
summary(lm4)

lm5<-lm(formula=Months$Likelihood_Recommend_H~ Months$Customer_SVC_H,data = Months)
summary(lm5)

lm6<-lm(formula=Months$Likelihood_Recommend_H~ Months$Tranquility_H+Months$Internet_Sat_H,data= Months)
summary(lm6)

lm7<-lm(formula=Months$Likelihood_Recommend_H~ Months$Customer_SVC_H+Months$Condition_Hotel_H,data = Months)
summary(lm7)

lm8<-lm(formula=Months$Likelihood_Recommend_H~ Months$Customer_SVC_H + Months$Condition_Hotel_H + Months$Staff_Cared_H, data = Months)
summary(lm8)

lm9<-lm(formula=Months$Likelihood_Recommend_H~ Months$Customer_SVC_H + Months$Condition_Hotel_H + Months$Staff_Cared_H + Months$Internet_Sat_H, data = Months)
summary(lm8)

#Bar Plot for Amenities
install.packages("reshape")
library(reshape)
amenity <- Months[,c("Conference_PL", "Convention_PL", "Dry.Cleaning_PL", "Elevators_PL","Fitness.Center_PL","Fitness.Trainer_PL", "Golf_PL", "Indoor.Corridors_PL", "Laundry_PL", "Limo.Service_PL","Mini.Bar_PL", "Pool.Indoor_PL", "Pool.Outdoor_PL", "Regency.Grand.Club_PL","Resort_PL", "Restaurant_PL", "Self.Parking_PL", "Shuttle.Service_PL", "Ski_PL", "Spa_PL")]
amenity <- na.omit(amenity)
amenity$Spa_PL[amenity$Spa_PL=="Yes"] <- "Y"
df5 <- data.frame(ColName=character(), Yes=character(), No=character())
for (column in colnames(amenity)) {
  contingency <- data.frame(table(amenity[,column]))
  newrow <- data.frame(ColName=column, Yes=contingency[,2][contingency[,1]=="Y"],
                       No=contingency[,2][contingency[,1]=="N"])
  df5 <- rbind(df5, newrow)
}
df.m <- melt(df5, id.vars="ColName")
# Bar chart
g <- ggplot(data=df.m, aes(x=ColName, y=value))
g <- g + geom_bar(aes(fill=variable), position="dodge", stat="identity")
g <- g + theme(axis.text.x=element_text(angle=90, hjust=1))
g <- g + ggtitle("America - Amenity Factors")
g

install.packages("arulesViz")
library(arulesViz)

aruleMonths1 <- data.frame(Months$NPS_Type, Months$Likelihood_Recommend_H, Months$Boutique_PL,Months$Resort_PL, Months$Limo.Service_PL, Months$Fitness.Center_PL,Months$Laundry_PL,Months$Mini.Bar_PL,Months$Self.Parking_PL,Months$Valet.Parking_PL, Months$Shuttle.Service_PL)
aruleMonths1$Months.NPS_Type<-as.factor(aruleMonths1$Months.NPS_Type)
aruleMonths1$Months.Likelihood_Recommend_H<-as.factor(aruleMonths1$Months.Likelihood_Recommend_H)
#aruleMonths$Months.Overall_Sat_H<-as.factor(aruleMonths$Months.Overall_Sat_H)
ruleset <- apriori(arulenewMayDec, parameter = list(support=0.1, confidence=0.8))
plot(ruleset)
goodrules <- rulesDetractor[quality(rulesDetractor)$lift>2]
inspect(goodrules)
plot(goodrules)
#promoter
rulesPromoter<-apriori(aruleMonths, parameter = list(support=0.4, confidence=0.4),appearance = list(rhs = 'Months.NPS_Type=Promoter', default='lhs'))
inspect(rulesPromoter)
plot(rulesPromoter)
plot(rulesPromoter, method="paracoord",control=list(reorder=TRUE))
plot(rulesPromoter, method="graph",control=list(type="items"))
summary(rulesPromoter)
#detractori[b,]
rulesDetractor<-apriori(aruleMonths, parameter = list(support=0.015, confidence=0.3),appearance = list(rhs = 'Months.NPS_Type=Detractor', default='lhs'))
inspect(rulesDetractor)
plot(rulesDetractor)
summary(rulesDetractor)
plot(goodrules,  method="graph",control=list(type="items"))
#Map
library(zipcode)
data("zipcode")
library("ggmap")
library(ggmap)
datazip = Months[c("Postal.Code_PL", "Likelihood_Recommend_H")]
datazip<-merge(datazip, zipcode, by.x='Postal.Code_PL', by.y='zip')
map<-get_map(location='united states', zoom=4, maptype= "terrain", source='google', color='bw')
datamap<-ggmap(map)+geom_point(aes(x=longitude, y = latitude, show_guide = TRUE, color = Likelihood_Recommend_H), data = datazip, alpha = .9, na.rm = T)+ scale_color_gradient(low= "green", high = "red")
datamap


#SVM 
svmSeason<-data.frame(Months$State_PL, Months$NPS_Type,Months$Likelihood_Recommend_H, Months$Customer_SVC_H, Months$Staff_Cared_H, Months$Internet_Sat_H,  Months$Bell.Staff_PL,Months$Business.Center_PL,Months$Convention_PL,Months$Spa_PL,Months$Fitness.Center_PL)
svmSeason<-svmSeason[!is.na(svmSeason$Months.State_PL),] 
svmSeason<-svmSeason[!is.na(svmSeason$Months.Likelihood_Recommend_H)&!is.na(svmSeason$Months.Customer_SVC_H)&!is.na(svmSeason$Months.Staff_Cared_H)&!is.na(svmSeason$Months.Internet_Sat_H)&!is.na(svmSeason$Months.Bell.Staff_PL)&!is.na(svmSeason$Months.Business.Center_PL)&!is.na(svmSeason$Months.Convention_PL)&!is.na(svmSeason$Months.Spa_PL)&!is.na(svmSeason$Months.Fitness.Center_PL),]
svmSeason <- svmSeason[(svmSeason$Months.Likelihood_Recommend_H>=3),]
svmSeason<-svmSeason[!(svmSeason$Months.Bell.Staff_PL=="")&!(svmSeason$Months.Convention_PL =="")&!(svmSeason$Months.Business.Center_PL=="")&!(svmSeason$Months.Spa_PL=="")&!(svmSeason$Months.Fitness.Center_PL==""),]
random.indexes<-sample(1:nrow(svmSeason))
cutpoint<- floor(nrow(svmSeason)/3*2)
svmSeason.train <- svmSeason[random.indexes[1:cutpoint],]
svmSeason.test<-svmSeason[random.indexes[(cutpoint+1):nrow(svmSeason)],]
install.packages("e1071")
library(e1071)
install.packages("kernlab")
library(kernlab)
modelsvmSeason<-ksvm(svmSeason.train$Months.Likelihood_Recommend_H~.,data=svmSeason.train, cost=0.1, scale=FALSE)
modelsvmSeason

#Naive Bayes
kOutput <- naiveBayes(svmMay.train$newMayData.NPS_Type~svmMay.train$newMayData.ROOM_TYPE_CODE_R,data=svmMay.train)
kPred <- predict(kOutput,svmMay.test,type="class")
print(kOutput)
results <- table(svmMay.test$newMayData.NPS_Type, kPred)
results[3,3]
length(kPred)
totalCorrect <- results[2,2]+results[3,3]+results[4,4]
totalInTest <- nrow(svmMay.test)
percent <- totalCorrect/totalInTest
percent   
