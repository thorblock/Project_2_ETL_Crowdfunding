# Project_2_ETL_Crowdfunding
Pair programming to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data.

## Category and subcategory data frame creation
Category and subcategory data frames are created by string splitting category & subcategory from initial crowdfunding Excel. Category and subcategory IDs are assigned sequentially in order of first appearance. 
## Campaign data frame
Campaign data frame modulated following recommended data types. Namely, float for the goal and pledged columns and date notation for each crowdfunding campaign's launch and end dates. The whole campaign set knits with the category and subcategory sets, with their notation replacing the previous names. The indication is to use a junction or create a view in SQL to see the original terms.
## Contacts data frame
We went the pandas route for string splitting and data frame creation. 
## Crowdfunding database SQL
We used QuickDB to create an ERD of our four tables (see QuickDB schema Diagram). After that, we imported the four tables mentioned thus far into a Postgres SQL database based on the ERD discussed above.
