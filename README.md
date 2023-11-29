# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

Material Icon Theme btw

* Ruby version
3.1.1

* Rails version: gem 
"rails", "~> 7.1.2" 

* System dependencies : [
    gem mysql2
    gem devise
    gem rspec-rails (both develop and test)
]

* Configuration

* Database creation
Follow the step by step in the first link inside notes files in assets
Remember that you need to be the use root when typing "whoami" command  
so just enter the command> "sudo su" then "whoami" prompt expected "root"

* Database initialization
After created the user with grants, remember that you need to change the master key
for the right one also to delete the credentials.yml 
command: " rm config/credentials.yml.enc" and then "rails credentials:edit"
when the editor  yml is open add the dusername and pass step

* How to run the test suite:
 rspec /rspec/..../.....

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
