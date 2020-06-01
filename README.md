# fcm-rails-sample
Build a Rails app using FCM with Firebase

## 使い方

`fcm_sample` にある `.env.sample` を `.env` にリネームし、自身のFirebaseの設定を反映する。

+ FCM_SERVER_KEY
プロジェクトの設定 > クラウドメッセージング > サーバーキー

+ PROJECT_ID
プロジェクトの設定 > 全般 > プロジェクトID

+ SERVICE_ACOUNT_PATH
プロジェクトの設定 > サービスアカウント > 「新しい秘密鍵の生成」で作ったjson  
これを `fcm_sample` 配下においた場合は `xxxxx.json` が設定値になる。

### Herokuデプロイなど

本番環境などファイルパスが使えない場合は、サービスアカウントのJSONファイルの値について、以下のように環境変数を定義する

```
GOOGLE_ACCOUNT_TYPE='service_account'
GOOGLE_CLIENT_ID='000000000000000000000'
GOOGLE_CLIENT_EMAIL='xxxx@xxxx.iam.gserviceaccount.com'
GOOGLE_PRIVATE_KEY='-----BEGIN PRIVATE KEY-----\n...\n-----END PRIVATE KEY-----\n\'
FCM_SERVER_KEY='your firebase server key'
```

Herokuの場合は以下のようにして heroku コマンドで定義するか、
ダッシュボードから都度追加する。（追加後はHerokuのdynosを再起動する）

```
heroku config:set GOOGLE_ACCOUNT_TYPE="service_account"
```