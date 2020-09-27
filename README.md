# CMT Solutions

CMT Solutions is a web application that is able to retrieve a provider’s details based on their National Provider Identifier (NPI). User is searching the provider using NPI and details of the provider is stored in the database so we don't need to call public api to get details of a provider if it's requested again and also we keep track of all the searched Providers and top searched providers NPI and their count. To see more details of a provider, users can click on the show button and see the details of that provider which includes addresses, taxonomies, other_names, practice_locations and endpoints details of this provider.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installing


* Ruby version
 2.5.3

 ```
 rvm install 2.5.3
 ```
* Database
postgresql

```
brew install postgres
```


* Clone the repository


```
mkdir CMTSolutions

cd CMTSolutions

git clone https://github.com/usmanasif/cmt_solutions.git

cd cmt_solutions

bundle install
```

* Database creation

```
  rails db:create
  rails db:migrate
```
* Run app locally on 3000 port

```
rails server
```

it will run the app on this url. Visit it and you can play with it
http://localhost:3000/

* How to run the test suite

```
rails test
```

### Gems
- Used bootstrap 3 gem for designing and responsive website
- Used toaster gem to show notification to users
- Used will-paginate gem to implement pagination


### Workflow and functionality
- On web app main page users can enter the National Provider Identifier (NPI) of the provider and see the details of that NPI provider below in the tabular form. The last one searched Provider will be shown on the first row. If the existing one searched on the top, it will be moved to first row of table

- In the table, it will show the list of all the searched providers with details

- The pagination is implemented on the provided list data. 10 records can be seen on a single page and user switch between pages.

- To see more details of a provider, user can click on show button and see the details of that providers which includes addresses, taxonomies, other_names, practice_locations and endpoints details of this provider

- Implemented the functionality to show the top searched providers with count


### Sample NPI for testing

[1528200557, 1497917942, 1467456137, 1265692180, 1588061279, 1528427689, 1679926166, 1457880049, 1568731883, 1033119698, 1568849958, 1881057453]

