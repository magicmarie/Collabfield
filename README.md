[![Maintainability](https://api.codeclimate.com/v1/badges/eaf91935d54ebf8979f7/maintainability)](https://codeclimate.com/github/magicmarie/Collabfield/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/eaf91935d54ebf8979f7/test_coverage)](https://codeclimate.com/github/magicmarie/Collabfield/test_coverage)

## collabfield
This is a platform where you could search and meet like-minded people.

Main functionalities include:
```
Authentication (with Devise)
Ability to publish posts, and search and categorize them
Instant messaging (popup windows and a separate messenger), with the ability to create private and group conversations.
Ability to add users to contacts
Real time notifications
```

*To know more about Ruby or Rails visit [Ruby Lang](https://www.ruby-lang.org) or [Ruby on Rails](http://rubyonrails.org/).*

## Installation

Please make sure you have **Ruby(v 2.4.1) and PostgreSQL** installed. Take the following steps to setup the application on your local machine:

1. Run `git clone https://github.com/magicmarie/Collabfield.git` to clone this repository

2. Run `bundle install` to install all required gems


## Database

### Configuring the database

* You need to create  and initialisethese 2 databases `collabfield_development` and `collabfield_test`. Run:

    ```bash
    rails db:create db:migrate db:seed
    ```
## Tests

* Run test with `rspec spec`

## How to Contribute

* Fork this repository
* Clone it.
* Create your feature branch on your local machine with `git checkout -b your-feature-branch`
* Push your changes to your remote branch with `git push origin your-feature-branch` ensure you avoid redundancy in your commit messsage.
* Open a pull request to the `develop` branch and describe how your feature works