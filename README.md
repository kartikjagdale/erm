# Employee Resource Management(ERM)

ERM is a tool for listing and editing employees information of a company. 

# Features
  - List all employees
  - Retrieve employees working for a particular manager
  - Change department of an employee
  - Search Employees
  - Sort Employees based on name and department name

### Tech

ERM uses a number of open source projects to work properly:

* [Ruby on Rails](http://rubyonrails.org/) - A powerful server-side web application framework written in Ruby !
* [Twitter Bootstrap](http://getbootstrap.com/) - great UI boilerplate for modern web apps
* [jQuery](https://jquery.com/) - duh

And of course ERM itself is open source with a [public repository](https://github.com/kartikjagdale/erm)
 on GitHub.

### Installation
Clone the project and install the dependencies and devDependencies  and setup database and start the server.

```sh
$ git clone https://github.com/kartikjagdale/erm
$ cd erm
$ bundle
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails server
```

 1. Visit `127.0.0.1:3000` in your browser.
 2. Enter below admin `email` and `password` and hit `Enter`
```
email: admin@example.com
password: 123456
```

###Important Note:
Make sure you have `.env` file in your root folder and have setup environment variables in it, specially for database
```sh
ERM_DEV_DATABASE_PASSWORD='YourDatabasePassword'
``` 
when in doubt use `root` as database password

### Development
Want to contribute? Great!

Send a pull request with required changes and we will review and merge and you too can be a proud contributor. Cheers!!!
