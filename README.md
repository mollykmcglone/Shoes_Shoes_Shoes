# Shoes Shoes Shoes!

#### A web app to practice databases with Active Record and Ruby.

#### By Molly McGlone, July 2016

## Description

* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add, update, delete, and list shoe brands.
* As a user, I want to be able to add shoe brands to a store to show where they are sold.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I do not want stores and shoes to be saved if I enter a blank name.

## Setup/Installation Requirements

* To replicate, clone this repository to your local hard drive using this link: https://github.com/mollykmcglone/shoes_shoes_shoes.git

###Set up Databases:
```
$ postgres
(open new window)
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```
###Install and Run Bundler:
```
$ gem install bundler
$ bundle
```
###Run the Sinatra application:
```
$ ruby app.rb
Navigate to `localhost:4567` with a browser
```
## Support and contact details

Please contact me with any questions, concerns, or ideas at mollykmcglone@gmail.com

## Technologies Used

* Ruby
* Sinatra
* PostgreSQL
* Active Record
* HTML
* CSS
* Bootstrap

### License

MIT License

Copyright (c) 2016  **Molly McGlone**
