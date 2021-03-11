# テーブル設計

##  users テーブル

| Column               | Type      | Options                   |
|----------------------|-----------|---------------------------|
| nickname             | string    | null: false               |
| email                | string    | null: false, unique: true |
| password             | string    | null: false               |
| gender_id            | integer   | null: false               |
| age_id               | integer   | null: false               |
| profession_id        | integer   | null: false               |

### Association

- has_many :posts
- has_many :comments

##  posts テーブル

| Column               | Type       | Options                   |
|----------------------|------------|---------------------------|
| visual_reading       | text       | null: false               |
| question             | text       | null: false               |
| answer               | text       | null: false               |
| user                 | references | null: false               |

### Association

- belongs_to :user
- has_many :comments

##  comments テーブル

| Column               | Type       | Options                   |
|----------------------|------------|---------------------------|
| visual_reading       | text       | null: false               |
| question             | text       | null: false               |
| answer               | text       | null: false               |
| user                 | references | null: false               |
| post                 | references | null: false               |

### Association

- belongs_to :user
- belongs_to :post