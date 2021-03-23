# Olympics API

Web application for browsing a database of Olympic Games. The database contains information about disciplines, medalists, sports, etc. It uses REST architecture and JSON format to communicate with the client. The project is under development.

Demo version of the API is available on Heroku:
* http://olympics-ks.herokuapp.com/api/

Due to database limits, data of only two Olympic Games is available (52 and 51).

### Table of contents

---

* [Build with](#build-with)

* [Functionality](#functionality)

* [Database](#Database)

* [Status](#status)

* [Deployment](#deployment)

* [Other information](#other-information)

### Build with

---

Project is created with:

* Python (3.8.1)

* Django (3.0.3)

* DRF (3.12.2)

* PostgreSQL

* Docker

* HTML

### Functionality

---

* browsable database

* multiple endpoints and filters


##### _Endpoints_

List endpoints:
* api/countries/
* api/events/
* api/games/
* api/medals/
* api/persons/
* api/sports/

Detail endpoints:
* api/countries/[int:pk]
* api/countries/[str:name]
* api/events/[int:pk]
* api/games/[int:pk]
* api/medals/[int:pk]
* api/persons/[int:pk]
* api/sports/[int:pk]

2nd level requests:
* api/games/[int:pk]/events/
* api/game-event/[int:pk]
* api/games/[int:game_pk]/events/[int:event_pk] 
* api/countries/[int:pk]/persons/


##### _Filters_

Olympic Games:
* season (summer or winter)
* min_year (earliest year of olympic game)
* max_year (latest year of olympic game)

Medals
* color (gold, silver, bronze)
* year (year of competition)
* person (part of winner's name)

Persons
* name (part of persons name)
* sex (M or F)
* year (year of birth)
* min_year (earliest year of birth)
* max_year (latest year of birth)
* nationality (usa, pol, ger, etc.)

##### _Screenshots_

---

_List of Olympic Games_

![List of Olympic Games](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/1_list-of-games.PNG)


_Person details_

![Person details](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/2_person-detail.PNG)


_Medal details_

![Medal details](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/3_medal-details.PNG)

_Competition results_

![Competition results](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/4_game-events-winners.PNG)


_Example of GET request in Postman (with parameters)_

![Example of GET request in Postman (with parameters)](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/5_postman-list.PNG)

### Database

---
Data presented in this app has been downloaded from
[Kaggle](#https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results).
The source database is flat but has been converted to relational database by filtering, splitting and adding relations to the data. 
Current database schema is shown below:

_Database schema_

![Database schema](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/6_database-schema.PNG)


### Status

---

The project is under development. More endpoints, filters, functionalities and data visualisation are planned to be implemented. 

### Deployment

```shell
# get a copy of the application's files
git clone https://github.com/KrystianSciuba/Olympics.git 

# enter the project folder
cd Olympics

# build the app with docker-compose
docker-compose build

# run the container in the background
docker-compose up -d

#copy the sql file to the container
docker cp api_db.sql olympics_db_api_1:/

# run the command from the sql file
docker container exec -it olympics_db_api_1 psql --dbname=db_api --username user -f api_db.sql

[# or in case of "the input device is not a TTY" error
winpty docker container exec -it olympics_db_api_1 psql --dbname=db_api --username user -f api_db.sql]

# start the app in a browser using Docker IP and port 8000
http://192.168.99.100:8000/api/ 

# Enjoy!
```

### Other information

---
dataset source:
https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results

some data might be inaccurate
