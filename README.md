# Grocery Store API

This is a Ruby on Rails API for calculating receipts at a local grocery store.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development purposes.

### Prerequisites

Make sure you have the following installed on your machine:

- Ruby (version 2.7.0 or higher)
- Rails (version 6.0 or higher)

### Installing

Clone the repository to your local machine:

```bash
git clone https://github.com/juan9222/GroceryStoreAPI.git
```

Navigate to the project directory:

```bash
cd GroceryStoreAPI
```

Install dependencies:

```bash
bundle install
```

### Running the server

Start the Rails server:

```bash
rails server
```

The server will start running at http://localhost:3000.

### Making Requests
Send a POST request to http://localhost:3000/calculate with the following JSON body format:

```bash
{
  "items": ["Bread", "Banana", "Milk", "Apple", "Bread", "Milk"]
}
```

### Response

The API will respond with a JSON object containing the receipt details, including the total cost, individual item totals, and total savings.

```bash
{
    "items": [
        {
            "item": "Bread",
            "quantity": 2,
            "total": 4.34
        },
        {
            "item": "Banana",
            "quantity": 1,
            "total": 0.99
        },
        {
            "item": "Milk",
            "quantity": 2,
            "total": 5.0
        },
        {
            "item": "Apple",
            "quantity": 1,
            "total": 0.89
        }
    ],
    "total_cost": 11.22,
    "total_savings": 2.94
}
```