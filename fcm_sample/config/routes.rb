Rails.application.routes.draw do
  root  'users#index'

  #ユーザー一覧を表示
  get '/users', to: 'users#index'

  # トークンを登録更新する
  post '/token', to: 'users#token'

end
