# Shopping Receipt

This is a Ruby application that produces shopping receipt and calcuates sales tax for each item.

## Prerequisites

- Ruby (version 3.2.2 or higher)
- Bundler

## Setup

1. Clone the repository:
  ```sh
  git clone https://github.com/law326/Shopping_receipt.git
  cd Shopping_receipt
  ```

2. Install dependencies:
  ```sh
  bundle install
  ```

## Input Shopping List

Open `shopping_list.txt` file and supply your shopping list with format like this:

````
2 book at 12.49
1 music CD at 14.99
1 chocolate bar at 0.85
1 imported box of chocolates at 10.00
1 imported bottle of perfume at 47.50
````

This application runs under the assumption of above input format(quantity, name of the item and whether it is imported, price). If you supply format other than this, the application may error.

## Running the Application

To run the application, execute the following command:
```sh
ruby main.rb
```

## Running Tests

To run the tests, use the following command:
```sh
bundle exec rspec
```
