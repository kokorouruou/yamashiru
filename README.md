# YamaShiru
![yamashiru logo](https://user-images.githubusercontent.com/80765628/128458183-ff07682f-784d-4a19-9b05-fb2bd9b0d0ff.png)

# 概要
YamaShiruは日常では味わえない楽しさ、素晴らしさを体験することが出来る登山、トレッキングの様子を
ユーザー同士が共有する画像投稿アプリケーションです。またそれ以外にも山の情報や登山前の荷物準備など
「登山する前に知りたかった」という機能も加えることでアウトドア特有の危険・リスクを未然に防止し、充実した
時間を過ごして頂くことを目的としています。

# App URL
https://yamashiru.herokuapp.com/

# Yamashiruのポジショニング
![yamashiru position](https://user-images.githubusercontent.com/80765628/128459792-99b39dd1-ea23-4435-bbb7-27e48c7b494f.png)

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
｜mountain_name_id     |integer     |                   |
｜climbing_time_id     |integer     |                   |
｜mountain_view_id     |integer     |                   |
｜stamina_id           |integer     |                   |
｜danger_id            |integer     |                   |



### Association

- belongs_to :user
- has_many   :comments
- belongs_to_active_hash :theme
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :mountain_name
- belongs_to_active_hash :climbing_time
- belongs_to_active_hash :outlook
- belongs_to_active_hash :stamina
- belongs_to_active_hash :danger