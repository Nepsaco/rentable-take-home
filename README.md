## Getting Started with the Application

### Prerequisites
Before running the app, ensure that your system meets the following requirements:

- **Ruby version**: >= 3.3.4
- **Rails version**: >= 7.2.1

You can check your Ruby and Rails versions using the following commands:

```bash
ruby -v
rails -v
```

### Installation & Setup

1. **Clone the repository**  
Clone this repository to your local machine:

```bash
git clone https://github.com/Nepsaco/rentable-take-home
cd rentable-take-home
```

2. **Install dependencies**  
Run the following command to install the necessary gems for the application:

```bash
bundle install
```

3. **Sqlite3 Database setup**  
After installing the dependencies, set up the database using the following commands:

- Create the database:

```bash
rake db:create
```

- Run migrations to structure the database:

```bash
rake db:migrate
```

- Seed the database with initial data:

```bash
rake db:seed
```

### Running the Application

To start the Rails server, execute the following:

```bash
rails server
```

The app will be running at **[http://localhost:3000](http://localhost:3000)**. You can interact with the project requirements directly through the web interface by clicking the "visit" buttons on the home page.

### Interacting with the API via Postman

For creating, updating, and deleting properties or units, it's recommended to use Postman or another API client. Below are the available API endpoints and the corresponding HTTP methods to use:

#### GET Requests:
- Fetch all units:

```bash
GET http://localhost:3000/units.json
```

- Fetch all properties:

```bash
GET http://localhost:3000/properties.json
```

- Fetch a single unit by ID:

```bash
GET http://localhost:3000/units/[:id].json
```

- Fetch a single property by ID:

```bash
GET http://localhost:3000/properties/[:id].json
```

#### POST Requests:
- Create a new unit:

```bash
POST http://localhost:3000/units.json
```

- Create a new property:

```bash
POST http://localhost:3000/properties.json
```

#### PUT Requests:
- Update an existing unit by ID:

```bash
PUT http://localhost:3000/units/[:id].json
```

- Update an existing property by ID:

```bash
PUT http://localhost:3000/properties/[:id].json
```

#### DELETE Requests:
- Delete an existing unit by ID:

```bash
DELETE http://localhost:3000/units/[:id].json
```

- Delete an existing property by ID:

```bash
DELETE http://localhost:3000/properties/[:id].json
```

Example Post request:

<img width="1423" alt="image" src="https://github.com/user-attachments/assets/fc838637-866a-45a8-a69b-5fdc582bd4e2">

### Additional Notes

- Ensure that the server is running when you are testing the API endpoints.
- For POST and PUT requests, include the required payload in the request body, formatted as JSON.
- API responses will be in JSON format, making it easy to parse the results in Postman or another client.
