Simplesh-api
===========================
![alt text](https://i.ibb.co/HXXxFNT/Screen-Shot-2021-02-18-at-9-56-51-PM.png)

This is the back-end API for the simplesh application. Once done completing setup with this API, please visit the front end repo [here](https://github.com/Mar5Planet/simplesh-frontend) for the front end React setup instructions.

The simplesh application is designed to simplify conversations, their corresponding messages, and thoughts attributed to those messages. You may add conversations, visit existing conversations and add messages or thoughts.

## Requirements

* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (Ruby 2.7.0)
* [Bundler for Ruby](http://bundler.io/), a dependency manager
* Right version of Development Kit, if you are using Windows.
* The [RubyGems](https://guides.rubygems.org/) packaging system, which is installed with Ruby by default. 
* A working installation of the SQLite3 Database.


## Getting Started

1. Clone the repo

   ```
   $ git clone https://github.com/Mar5Planet/simplesh-api.git 
   $ cd simplesh-api
   ```

2. Install dependencies

   ```
   $ bundle install
   ```

3. Run rspec tests

   ```
   $ rspec
   ```
   
4. Create, migrate, seed database and run server
* Run the following commands 
* Ensure the server is started on port 3000 and that there is nothing running on that port.

   ```
   $ rails db:drop db:create db:migrate db:seed
   $ rails server -p 3000
   ```
   

## Key areas of repo

* [Conversations controller](app/controllers/conversations_controller.rb) 
* [Messages controller](app/controllers/messages_controller.rb)
* [Thoughts controller](app/controllers/thoughts_controller.rb)
* [specs](spec/requests/)
* [Routes](config/routes.rb)
* [Models](app/models)
