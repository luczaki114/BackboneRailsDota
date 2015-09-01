

#A simple rails application that uses backbone to render content from a RESTful api built in RoR.

###Technologies used...
######Ruby
######Ruby on Rails
######ActiveRecord
######PostgreSQL
######jQuery
######Backbone/Underscore
######Bootstrap


###To use locally:
-Use terminal to get to the root of the app.

-replace username: app-user in the development environment in the database.yml file to your username(Don't know your username? Open psql and type SELECT * FROM pg_user;)

-Run rake commands db:create, db:migrate, db:seed.

-Open rails console and type ApiKey.create to create a key to use locally.

-Copy that new key and throw it in a .env file in your root directory under the variable APIKEY.

-Rails server and you should be up on your machine.

###To use with heroku:

-So far I managed to upload the rails app and the initial root view shows up with no problems.

-A simple Github link to the repository is enough to run smoothly.

######but!

-Backbone cannot access the api because it doesnt have a production key.

-install Heroku toolbelt.

-login to use heroku account using 'heroku login' in terminal.

- in terminal 'heroku rails console --app myapp'

-in IRB type 'ApiKey.create' Copy api token.

-On your heroku site, go to settings and make a new config variable called API_KEY and paste token value in there.

-Deploy and run!
