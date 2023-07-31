# PROJECT: ETL: The Joy of Coding

AUTHOR: Matthew Allen

## PROJECT CONTEXT

In this project we are going to explore the idea of ETL (Extract, Transform, Load), which is the process of taking data from multiple unique sources, modifying them in some way, and then storing them in a centralized database. This is a very common practice when collecting data from systems in order to utilize that data in another system. This data may come in the form of CSV, JSON, XML, API requests with other custom formats, etc - it might even be that you have direct access to several databases with different, but relatable data that you want to be merged into another database in order to gain insight from it in some way.

## PRESENTED PROBLEM

Your local public broadcasting station has an overwhelming amount of requests for information on The Joy of Painting. Their viewers want a website that allows them to filter the 403 episodes based on the following criteria:

* Month of original broadcast
  * This will be useful for viewers who wish to watch paintings that were done during that same month of the year
* Subject Matter
  * This will be useful for viewers who wish to watch specific items get painted
* Color Palette
  * This will be useful for viewers who wish to watch specific colors being used in a painting

## TASKS

### 0. Design a Database

[Given three datasets] The data has been collected from numerous sources and is everything required to create a database and API that would allow your local public broadcasting station to provide a service to filter episodes of The Joy of Painting.  Though this data is great, it was collected by three different individuals and they had three different ways they chose to store data.  Please review the collected data and design a database that will store all of this information in a way that will make it usable via the API to filter episodes of The Joy of Painting.

For this task you must:

* Create a design document using UML documentation for the database that you will create.
* Create the SQL scripts required to create your database from scratch based on the design document.
  * The SQL scripts must run locally when building your database.
  * You may use any SQL database you choose (examples: MySQL, Postgres, SQLServer, etc.)

### 1. Extract, Transform, Load

Now that you've got a database designed that will make the collected data usable, it's time to get that data into your database.  The data collected is currently in three different sources and none of them will perfectly align to your database structure.  We'll need to write some custom code to extract this data from the different files, transform them a bit to make sure they will be able to be stored in our database, and then ultimately load them into it for long-term storage and use by your local public broadcasting station's audience.

In this task you must:

* Write custom scripts in any language you choose that imports the data correctly from these data files into your new database.
* Be sure to match data correctly before you commit them to storage:
  * Data may have inconsistencies which need to be handled either in your script or as a part of the data-cleanup process before your scripts run to store that data in the database.
  * If data is not accurate in your database, your users may not be able to use the filters correctly.

### 2. API

Your database is designed and now has data to work with.  The last step is to build an API that utilizes this data.  Again, your local public broadcasting station has an overwhelming amount of requests for information on The Joy of Painting.  Their viewers want a website that allos them to filter the 403 episodes based on the following criteria:

* Month of original broadcast
  * This will be useful for viewers who wish to watch paintings that were done during that same month of the year
* Subject Matter
  * This will be useful for viewers who wish to watch specific items get painted
* Color Palette
  * This will be useful for viewers who wish to watch specific colors being used in a painting

You must build an API that handles filtering so that the 403 episodes can be pared down to the desired episodes to watch.  Multiple filters should be usable at the same time and filters should allow the user to select multiple items (like selecting multiple colors to filter by).  When multiple filters are selected, the user should be able to specify if the filter should look for episodes that match all of the selected filters (meaning all filters must apply to every episode that is returned) OR be able to set the filters to look for an episode that includes one or more matches (a union of the filters, for example: one episode matches one of the colors selected but not the object painted while another episode matches on the month it aired, but not the color or object drawn).

Your API must:

* Run locally and communicate with your database to get data to the user
* Accept parameters via the URL, query parameters, or even as POST data in the body
* Return JSON with a list of episode information

*Hint: You can use a tool called PostMan to test your API locally.*