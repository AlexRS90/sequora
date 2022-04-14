# Sequora

> ROR API to that returns Merchants info.

Merchants is an API built with Ruby on Rails using the MVC architecture. The API allows users to see Merchants disbursements for a given merchant on a given week. If no merchant is provided return for all of them.


## API-endpoints

http://localhost:3000/api/v1/week/<code>given_week_number</code> 
### Should return all Merchants disbursements in that week

http://localhost:3000/api/v1/week/<code>given_week_number</code>/merchant/<code>Merchant_id</code>
### Should return all Merchant disbursements in that week for that particular merchant

## Built With

- Major languages: Ruby
- Frameworks: ROR
- Gems: RSpec

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

You need to have followings installed in your local machine:

- `Ruby`
- `Postgresql`
- `Rails`
- `RSpec`

## To get a local copy up and running follow these simple example steps.

Open your termnial and run the following command:

<code>git clone https://github.com/AlexRS90/sequora.git</code>
 - cd zip-codes
 - bundle install
 - rails db:create
 - rails db:migrate
 - rails db:seed
 - <code>rails s</code> <br>

 Open your browser and type the following URL <code>http://localhost:3000/</code>


## Author 👤

👤 **Alejandro Ramos**

- GitHub: [@AlexRS90](https://github.com/AlexRS90)
- Twitter: [@AlejandroRBenji](https://twitter.com/AlejandroRBenji)
- LinkedIn: [@AlexRS90](https://www.linkedin.com/in/AlexRS90/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/AlexRS90/sequora/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.