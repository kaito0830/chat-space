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
  
## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groupテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|
|user_id|integer|null:false, foreign_key: true|

### Association
- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :messages

## userテーブル

|Column|Type|Options|
|------|----|-------|
|user_name|string|null :false|
|nickname|string|null :false|
|email|string|null :false, unique :true|
|password|string|null :false|

### Association
- has_many :groups_users
- has_many :groups, through: :groups_users
- has_many :messages

## messageテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|null: false|
|group_id|integer|null: false|
|user_id|integer|null: false|

### Association
- belongs_to :group
- belongs_to :user


