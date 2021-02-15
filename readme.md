# Olympics API

Web application for a database of Olympic Games. The database contains information about disciplines, medalists, sports, etc. It uses REST architecture and JSON format to communicate with the client. The project is under development.

### Table of contents

---

* [Build with](#build-with)

* [Functionality](#functionality)

* [Status](#status)

* [Info](#info)

### Build with

---

Project is created with:

* Python

* Django

* DRF

### Functionality

---

* browsable database

* multiple endpoints and filters

---

##### _Endpoints_

---

* List Endpoints:
* api/ countries/
* api/ events/
* api/ games/
* api/ medals/
* api/ persons/
* api/ sports/
-
* Detail endpoints:
* api/ countries/<int:pk> 
* api/ countries/<str:name>
* api/ events/<int:pk> 
* api/ games/<int:pk> 
* api/ medals/<int:pk> 
* api/ persons/<int:pk> 
* api/ sports/<int:pk> 
-
* 2nd level requests:
* api/ games/<int:pk>/events/
* api/ game-event/<int:pk> 
* api/ games/<int:game_pk>/events/<int:event_pk> 
* api/ countries/<int:pk>/persons/

---

##### _Filters_

---
*Olympic Games:
*season, min_year, max_year
-
*Medals
*color, year, person
-
Persons
*name, sex, year, min_year, max_year, nationality
---

##### _Screenshots_

_List of Olympic Games_
![List of Olympic Games](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/1_list-of-games.PNG)


_Person details_
![Person details](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/2_person-detail.PNG)


_Medal details_
![Medal details](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/3_medal-details.PNG)

_Competition results_
![Competition results](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/4_game-events-winners.PNG)


_Example of GET request in Postman (with parameters)_
![Example of GET request in Postman (with parameters)](https://raw.githubusercontent.com/KrystianSciuba/Olympics/master/readme_files/5_postman.PNG)

### Info

---
some other informations




