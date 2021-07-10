# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

｜Column                     |Type    |Options                      |
｜---------------------------|--------|-----------------------------|
｜nickname                   |string  |null: false                  |
｜email                      |string  |null: false, unique: true    |
｜encrypted_password         |string  |null: false                  |

### Association

- has_many : tweets
- has_many : comments


## tweetsテーブル

｜Column               |Type        |Options            |
｜---------------------|------------|-------------------|
｜title                |string      |null: false        |
｜theme_id             |integer     |null: false        |
｜prefecture_id        |integer     |null: false        |
｜mountain_name        |string      |                   |
｜climbing_time_id     |integer     |                   |
｜mountain_view_id     |integer     |                   |
｜stamina_id           |integer     |                   |
｜danger_id            |integer     |                   |



### Association

- belongs_to :user
- has_many   :comments
- belongs_to_active_hash :theme
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :climbing_time
- belongs_to_active_hash :outlook
- belongs_to_active_hash :stamina
- belongs_to_active_hash :danger