# Art think

# 概要
アート思考を育むためのアプリケーションです。
アート思考とは、自分だけの答えを作る思考のことで、固定観念に囚われることなく、まるで子どものように、自由な発想、柔軟な発想をすることができます。
アート作品を通して、作品から「自分が感じること」、「自ら問いをつくること」、「自分だけの答えを出すこと」というステップを踏むことで、アート思考を育んでいくことができます。

# App URL
https://art-app-34408.herokuapp.com/

# テスト用アカウント
### 認証
- username  art
- password  34408
### ユーザーログイン
- email: test@test
- password: test123456

# DEMO
### トップページ
[![Image from Gyazo](https://i.gyazo.com/a296382b4c9cd23fdd702bfbfad3d380.gif)](https://gyazo.com/a296382b4c9cd23fdd702bfbfad3d380)
### ユーザー登録画面
[![Image from Gyazo](https://i.gyazo.com/0fdd24a8937bf8b34e9fd318146dbf2f.jpg)](https://gyazo.com/0fdd24a8937bf8b34e9fd318146dbf2f)
### 投稿画面
[![Image from Gyazo](https://i.gyazo.com/984f3cd9df76caa68a939be08e5e71c5.jpg)](https://gyazo.com/984f3cd9df76caa68a939be08e5e71c5)
### コメント画面
[![Image from Gyazo](https://i.gyazo.com/68ade97eef56152945ddb2de907f2088.gif)](https://gyazo.com/68ade97eef56152945ddb2de907f2088)

# 利用方法
#### 新規登録・ログイン方法
1. トップページの右上アイコンから新規登録、ログインできます。

#### 投稿方法
1. ログイン後、投稿アイコンが表示されるので、クリックすると投稿ページへ遷移します。
2. フォーマットに沿って投稿完了すると、投稿一覧のページへ遷移します。

#### コメント方法
1. トップページ下部のコンテンポラリーより、投稿一覧ページへ遷移します。
2. 投稿画像をクリックすると、投稿データの詳細ページへ遷移します。
3. コメントフォームに入力後投稿すると、詳細ページ下部に投稿内容が反映されます。

# 目指した課題解決
30代〜40代のビジネスマンに向けたアプリケーションです。
変化の早い時代で、過去の常識に囚われずに、もっと思考を柔軟にしていける手助けができればと思い、このアプリケーションを制作いたしました。思考を柔軟にするにはこのアート思考がとても効果的ですが、アートはよくわからないと思っていたり、中々美術館にいくことも無ければ、アートと触れ合う機会はかなり少ないかと思います。アート思考を育んでいければ、自分の仕事や人生がもっと満たせれ広がってくと思います。


# 実装機能について
### ユーザー管理機能
- 新規登録、ログイン、ログアウトが可能
### 投稿機能
- 画像、自分が感じること、自ら作った問い、自分なりの答えの投稿が可能
### 投稿詳細表示機能
- 投稿された画像が一覧で閲覧可能
### コメント機能
- 各ユーザーが投稿したデータに、自分が感じること、自ら作った問い、自分なりの答えの投稿が可能

# 工夫したポイント
感度の高いビューの作成作りを工夫しました。
いろんなサイトやアプリを見て、感度が高いと感じたのは、動きのある見た目でした。雰囲気に動きをビューに取り入れていくことを意識して作成しました。

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

# 開発環境
- 言語：HTML/CSS/Ruby/JavaScript
- フレームワーク： Ruby on Rails
- データベース： MySQL
- テストツール： RSpec
- デプロイ： Heroku
