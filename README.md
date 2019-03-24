# Jungle

A mini e-commerce application built with Rails 4.2 allowing users to register, make purchases and payment through Stripe, write reviews and rate products.

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

Some basic commands are:
```
bundle install
bin/rake db:reset
bin/rails s -b 0.0.0.0
```

## How to make purchases in Jungle

1. Click login button.
2. Register if you do not have an account.
3. Click Details button if you want to see the descriptions and reviews about the product.
4. Click Add button to add to the cart.
5. Click My Cart to view the cart.
6. Make a payment.

## Admin feature in Jungle

1. Click Admin button to access admin features.
2. Input username and password when prompted.
3. Add or delete new product/categories.

## Functions

- [x] User authentication: allow users to register with emial and password
- [x] Order Details: view order information after user makes purchases
- [x] Email receipt: send confirmation emails to user after purchases
- [x] Admin: using HTTP basic authentication to allow only admin access to admin features
- [x] Product ratings: allow logged users to post reviews and ratings to the products

## Screenshots

!["Jungle"](https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/jungle_main.png)
!["Login/Register"](https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/login.png)(https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/register.png)
!["Product detail"](https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/product_detail.png)
!["Cart"](https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/cart.png)
!["Stripe payment"](https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/stripe.png)
!["Order confirmation"](https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/order_confirmation.png)
!["Admin authentication"](https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/admin_authentication.png)
!["Admin features"](https://raw.githubusercontent.com/kimjaehu/jungle-rails/master/docs/admin_features.png)

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe