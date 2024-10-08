# README

To run app make sure you have:

- Ruby version >= 3.3.4
- Rails version >= 7.2.1

To configure app:

`bundle install`

`rake db:create`

`rake db:migrate`

`rake db:seed`

To run app:

`rails server`

App will be available at `localhost:3000` and should be able to access all the project requirements through routing in the app by clicking visit buttons.

To create, update or delete properties or units its best to use postman. Use these URLs with the correct HTML method (GET, POST, PUT, DELETE)

For GET: 

- `http://localhost:3000/units.json` 
- `http://localhost:3000/properties.json` 
- `http://localhost:3000/units/[:id].json` 
- `http://localhost:3000/properties/[:id].json`

For POST:

- `http://localhost:3000/units.json` 
- `http://localhost:3000/properties.json`

For PUT: 

- `http://localhost:3000/units/[:id].json` 
- `http://localhost:3000/properties/[:id].json`

For DELETE: 

- `http://localhost:3000/units/[:id].json` 
- `http://localhost:3000/properties/[:id].json`
