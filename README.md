spree-theme-market
==================

The Theme Market for Spree (GSOC 2014)

[![Build Status](https://travis-ci.org/spree-girls/spree-theme-market.svg?branch=master)](https://travis-ci.org/spree-girls/spree-theme-market)

The Theme Market for Spree was developed as part of the Rails Girls Summer of Code project, 2014. The idea for the app is to create a store where themes for Spree could be uploaded and shared.

## Our Stack

* PostgreSQL 9.3.4
* Ruby 2.0.0.
* Rails 4.1.5
* RSpec + Capybara

For the front end we are using PureCSS modules.

We are managing file uploads with Paperclip and Amazon S3.

We are deploying using Heroku and the Thin webserver.

## Set Up

Configure the database.yml file to match the PostgreSQL on your machine.

Run

`rake db:create db:migrate db:seed`

Then start your server

`rails server`

## Test

`bundle exec rake spec`

## Deployment

Deploy using heroku, please set up heroku then `git push heroku master`
