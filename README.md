# Pizza Restaurant API - # phase-4-week-1-code-challenge

This is a Rails API application for tracking pizza restaurants and their pizzas.

## Project Setup

To set up the project locally, follow these steps:

1. Clone the repository: `git clone <repository_url>`
2. Navigate to the project directory: `cd pizza_app`
3. Install the dependencies: `bundle install`
4. Set up the database: `rails db:setup`
5. Start the Rails server: `rails server`

The API will be accessible at `http://localhost:3000`.

## Models and Associations

The application has the following models and associations:

- `Restaurant` has many `Pizzas` through `RestaurantPizza`
- `Pizza` has many `Restaurants` through `RestaurantPizza`
- `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`

## API Endpoints

The API provides the following endpoints:

- `GET /restaurants`: Returns a list of all restaurants.
- `GET /restaurants/:id`: Returns details of a specific restaurant and its pizzas.
- `DELETE /restaurants/:id`: Deletes a restaurant and its associated restaurant pizzas.
- `GET /pizzas`: Returns a list of all pizzas.
- `POST /restaurant_pizzas`: Creates a new restaurant pizza association.

For more details on the API endpoints and their response formats, refer to the code challenge instructions.

## License

This project is licensed under the [MIT License](LICENSE).
