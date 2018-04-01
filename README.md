# Hyatt-Customer-Review-Analysis


Executive Summary:
The entire dataset contains about 3 Million responses collected from the Hyatt Customer Survey in 2014. There are about 240 columns for each observation, some columns give details about the person who responded to the survey (example: guest title, guest preferred language), some attributes about the hotel (example: Location, Spa, Type) and a column that indicates whether the person is promoter, passive or detractor. In addition, the survey was used to determine if a customer is likely to be a “promoter” or “detractor” for Hyatt Hotels, with complacent people being labeled as “passive”. This Net Promotor Scale (NPS) type is quite valuable in various promotional offers and marketing, and provides a summary of the customer’s attitude or experience at the hotel.
With predictive data analytics and modelling, we can determine what factors influence whether a customer would become either a promoter or detractor. By comparing each result in the survey to the NPS type, individual attributes could be identified which Hyatt can control and manage, thus leading to potential increases in customer satisfaction and the NPS score. We have analyzed a large dataset and found several key findings related to facilities, services, hotel location, and many more that influence whether someone staying with Hyatt is likely to recommend the experience to another, or actively denounce their time at the hotel and turn passive/detractors into promoters.


Steps followed to achieve the goals:
➢ Understanding the problem and problem definition
➢ Follow AGILE methodology for project life cycle
➢ Data exploration
➢ Data preparation
➢ Modeling of Data
➢ Validation of the modeled data
➢ Implementation of the actionable insights and tracking the impact of the changes

Data Cleaning and Preparation:
The dataset contains many blanks and NA. The entire dataset includes the data for all the 12 months in a year with each file being around 1 GB approximately. We have performed the analysis on the months of February, May, August and December with 1 month from each of the 4 seasons. The dataset is first loaded into R from CSV format file and then columns were filtered which we found relevant for our analysis. Next, we removed all the blank spaces in the Net Promotor Scale column as they were irrelevant. The same process was carried out for each 4 month and then combined in one dataset for analysis. There was a total of 249991 records.
Data Cleaning Data CleaningData Cleaning Data Cleaning Data CleaningData Cleaning
Drill Down To Drill Down To Drill Down To Drill Down To Drill Down To Drill Down To Drill Down To Drill Down To United States United StatesUnited States United StatesUnited StatesUnited StatesUnited States
Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Focus on Various Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will Factors that will likely Affect the likely Affect the likely Affect the likely Affect the likely Affect the likely Affect the likely Affect the likely Affect the likely Affect the likely Affect the likely Affect the likely Affect the NPSNPS
Find Relations and Find Relations and Find Relations and Find Relations and Find Relations and Find Relations and Find Relations and Find Relations and Find Relations and Find Relations and Find Relations and Find Relations and Provide Key Provide Key Provide Key Provide Key Provide Key Provide Key Provide Key Provide Key Provide Key Actionable Insights Actionable InsightsActionable InsightsActionable InsightsActionable InsightsActionable InsightsActionable InsightsActionable InsightsActionable InsightsActionable Insights Actionable InsightsActionable InsightsActionable InsightsActionable InsightsActionable InsightsActionable InsightsActionable Insights

To efficiently operate with the dataset, we selected a three-month quarter of the year to act as our sample (July, August, and September), creating a 2GB collection of entries that we could use with our computing resources quickly and effectively. While this limit our findings to a time of year, it allows us to have consistent findings not influencing each attribute by seasonal changes, as well as being a sample we could modify easily without having to condense all 13 CSV files. This selection contained 249991 individual entries, which was a large enough size to truly predictively analyze.

Business Rules and Assumptions:
While analyzing the dataset, we operated under several key assumptions that became the basis for the report. Those were:
➢ NPS type was influenced by hotel attributes, not customer characteristics
➢ NPS could be improved if conditions were met
➢ Creating promoters was a direct inverse to removing detractors
➢ Satisfaction and service ratings were tied to NPS type

Business Questions:
➢ What factors affect the overall NPS value and why?
➢ Which state in the United States of America has the lowest NPS value and how we can improve the NPS in the state with lower NPS?
➢ What is the effect of NPS on the type of room?

Business Question 1:
What factors affect the overall NPS value and why?

Approach:
➢ Find relationships between the NPS score and likelihood to recommend with various flags and services provided by the hotels
➢ Model used: Linear modeling, Association rules, R-squared error and Apriori algorithm and analyzed result based on support, confidence and lift
➢ Result – Linear Model
Based on those dichotomous variables such as ‘Conference_FL’ which indicated if the service is offered or not, we conduct linear model to check the correlation between those amenity factors and NPS type individually. The results of the linear model showed that the

p-value of Internet, tranquility, staff care, condition and service were lower than 0.05. We can say these factors significantly influence on NPS

We compared every relatable attribute Hyatt provides to the overall NPS score. We found several important pieces of information:
Most influential: Rate of room, Customer Service, Room Condition
Least Influential: Internet Service,
Key Finding: Customer service and Room rate is key in influencing NPS, which play into the idea of increasing the value of the experience affecting the overall satisfaction of each customer. Staff, condition and service affects the overall NPS the most. Spa and Internet services have least effect
Furthermore, we implement associated rules on those key columns we picked from the results of linear modeling.
Key Findings Using Association Rules:
If there is a fitness center but no spa, there is a 72% chance that it will be highly recommended and there will be more promoters
All the amenities listed directly influence the NPS score and the customers likelihood to recommend.

Promoter using ARules:
We can see from the combination, that likelihood to recommend for a promoter would be 10, irrespective of the amenities like Resort and Boutique in the hotel. So, these factors have less importance.

Detractor using ARules:

We have shown only the top few rules to make it clear on the graph, but the other factors which have most importance on a scale from highest to lowest:

Business Question 2:
Which state in the United States of America has the lowest NPS value and how we can improve the NPS in the state with lower NPS?
Approach: Calculated NPS for every state in US using the formula - (Promoter/Total) *100 - (Detractor/Total) *100
Selected the states with lowest and highest NPS and compared facilities in these 2 states

Model used: Linear Correlation. Data Visualization, Maps, Bar plots
Figure: NPS distribution over different states using the mean NPS
Figure above show the distribution of NPS score in USA, the lightest color represents the highest NPS; the darkest color represents the lowest NPS. The State of Idaho has the best NPS, the State of Rhode Island has the worst NPS score

To see the comparison between the number of promoter and detractors between different states, we create a bar chart(Figure 7)

We find that ‘condition’, ‘customer service’, ‘staff care’, ‘tranquility’ are the key factors to improve NPS. By comparing the tranquility, customer services, hotel condition and the staff care of Rhode Island (the lowest NPS) and Idaho (the highest NPS), we created a bar chart (Figure 8).

In the figure above we found the correlation between two factors viz. Overall Satisfaction and Likelihood Recommended and plotted the Promoters Detractors and Neutral responses using these two.

In the figure above we found the correlation between two factors viz. Staff and Tranquility and plotted the Promoters Detractors and Neutral responses using these two.
Key Findings:
➢ Out of 1292 voters, approx. 22.75% passive in Rhode Island(2nd Highest) 21.2% detractors( Highest)
➢ Out of 518 voters, approx. 14.09% passive in Idaho(2nd Lowest) 6.57% detractors(2nd Lowest)
➢ California and Texas the highest number of promoters
➢ Coastal locations have higher NPS compared to other locations

Business Question 3:
What is the effect of NPS on the type of room?
Approach: Find out which room types correspond to promoters and which correspond to detractors. Use Naive Bayes model to validate and check the accuracy of prediction based on room type.
Model used: Naïve Bayes
Result: By implementing the naïve Bayes classifier, we compute the conditional a-posterior probabilities on those categorical variables such as ‘Room_Type_Code’ and predict the test data to see if the model is worked or not. Then, Naive Bayes indicates that room type can predict the NPS type with 78% accuracy. The NPS is significantly influenced by the type of rooms.

Key Findings: From the pie chart upward we can see that maximum promoters and minimum detractor were the ones with king size rooms followed by double bedrooms. Customers prefer to stay in King Sized and Double Sized rooms and Mountain View King Beds are the least preferred rooms

Unused Findings: Support Vector Machines
We utilized SVM but did not use it in our model as we were not getting good predictions. Below is what we found.

Actionable Insights & Recommendations
✓ More spending on renovation and maintenance of Hotel Facilities to keep the detractors happy and changing their opinion about the hotel
✓ Training programs for staff like bell staff to improve customer service for overall customer satisfaction as it plays a huge role on the NPS Score
✓ Plan a spa and a fitness center to improve tranquility
✓ Special offers for previous customers providing them with offers based on their feedback
✓ More family offers for winter season as customers prefer to stay with the family during the Christmas, Hanukkah and New Years – Since during this season there are respectively less customers compared to other season, family offers could attract customers
✓ Promotional offers in Hotels close to the beach to attract more customers during the Summer Seasons – Maximum number of customers are during the summer season, so this could be used as an opportunity to attract more customers as they prefer coastal regions for vacations during that time of the year
✓ Customer service, Room Type and Room conditions should be of prime focus especially Rhode Island, Maryland and Maine. Keeping focus on these factors would help to convert detractors to passive and passive to promotors keeping the promotors happy
✓ If expanding business, California, Texas and Florida are the states with more number of Customers
✓ Investing on high end internet services should be of least priority because it has low impact on Net Promoter Score
