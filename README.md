# YamaShiru
![yamashiru logo](https://user-images.githubusercontent.com/80765628/128458183-ff07682f-784d-4a19-9b05-fb2bd9b0d0ff.png)

# 概要
YamaShiruは日常では味わえない楽しさ、素晴らしさを体験することが出来る登山、トレッキングの様子を
ユーザー同士が共有する画像投稿アプリケーションです。またそれ以外にも山の情報や登山前の荷物準備など
「登山する前に知りたかった」という機能も加えることでアウトドア特有の危険・リスクを未然に防止し、充実した
時間を過ごして頂くことを目的としています。

# App URL
https://yamashiru.herokuapp.com/

![yamashiru top](https://user-images.githubusercontent.com/80765628/128466690-f0e85a83-4042-41ab-ac09-a66198180e1a.png)

# Yamashiruのポジショニング
![yamashiru position](https://user-images.githubusercontent.com/80765628/128459792-99b39dd1-ea23-4435-bbb7-27e48c7b494f.png)

# YamaShiruのペルソナ
* 性別・年齢 > 男性・30〜40代（既婚）
* 職業      > デスクワークメイン
* 趣味      > ショッピング・ドライブ
* 日常の生活 > 平日は都内で勤務、土日は家族と過ごす

『ペルソナの悩み』
今の生活でとても充実しているが、自分の時間が少なくて
10〜20代の時にみたいに趣味に没頭することはなかなか出来ない。

# 利用方法(各機能の実装目的)
## テーマ投稿
![yamashiru hatena1](https://user-images.githubusercontent.com/80765628/128463318-14fbe3f2-4fef-4cbc-a4e8-00eb9782e300.png)

## レビューチェック
![yamashiru hatena2](https://user-images.githubusercontent.com/80765628/128464160-7df6a147-789f-4c8a-bbb6-0bd135603876.png)

## 持ち物リスト（保存可）
![yamashiru hatena3](https://user-images.githubusercontent.com/80765628/128464576-cf398672-1010-4995-92d6-799dde42a2f2.png)

# その他機能
* ユーザー管理機能
* 投稿機能
* 詳細機能

# 使用技術
* HTML / CSS / JavaScript / Ruby(2.6.5) / Ruby on Rails(6.0.0)
* Git / GitHub / Visual Studio Code

#工夫したポイント
* 第一印象で「登山」、「ちょっと使ってみたい」と感じてもらえる配色やシンプルなレイアウト構成。トーン&マナーを整えて大人シックな印象にしました。
* ユーザービリティを第一に考え、検索機能もあえて検索項目を制限して気軽でストレスない機能にしました。
* ユーザーの「直感」を大事にするためになるべく文章の情報は減らし、画像や記号を使用しています。

# 課題点と実装予定の機能
* テストコードの実装、N+1問題を考慮した通信速度の担保、画像ファイル形式など細かいバリデーションを考慮し、アプリケーションとしてエラーや不具合が起きないように配慮した設計を目指
* AWSやS3など画像に対する処理
* マイページの作成


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
