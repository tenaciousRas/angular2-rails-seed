# angular2-rails-seed

A Rails v.5 application that runs an Angular2 frontend.  Angular2 does not interface directly with the Rails Asset Pipeline model.
This application uses a de-coupled frontend architecture:
1) webpack to compile Typescript Angular2 files
2) webpack to watch for changes to frontend assets
3) A RoR helper to serve webpack assets from public/wassets

* Ruby version -> Tested with Ruby 2.3.1p112
* System dependencies -> n/a
* Configuration -> tsconfig.json, webpack.config.js, typings.json
* Database creation -> bundle exec rake db:create db:migrate
* Database initialization -> bundle exec rake db:seed
* How to run the test suite -> bundle exec rails test
* Services -> n/a

## Installation
``` bash
git clone angular2-rails-seed
cd angular2-rails-seed
bundle install
bundle exec rake db:create db:migrate db:seed
npm install
```
## How To Run
``` bash
npm start
bundle exec rails server
```
"npm start" will launch webpack module bundler in "watch" mode.  Any changes to the static assets in frontend/src will cause webpack to re-bundle the assets.  This process will lock the command-line waiting for changes, so you will either need to open a new terminal or run it in the background to execute the following command.

"bundle exec rails server" starts the Rails server at port 3000.  To bind to an IP other than "localhost" use the "-b [host-IP]" opion.

## NG2-Rails-Seed

The information below applies to the Angular2 project in frontend/src.  This project was generated with [angular-cli](https://github.com/angular/angular-cli) version 1.0.0-beta.22-1.

### NG Development server
[deprecated] Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

[deprecated] - Use the Rails server w/webpack.  NG serve must be run from the /frontend folder for it to work.

### Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive/pipe/service/class`.

### Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.

### Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

### Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).
Before running the tests make sure you are serving the app via `ng serve`.

### Deploying to Github Pages

Run `ng github-pages:deploy` to deploy to Github Pages.

### Further help

To get more help on the `angular-cli` use `ng --help` or go check out the [Angular-CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
