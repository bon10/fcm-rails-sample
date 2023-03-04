Rails.application.routes.draw do
  root 'users#index'

  get 'login', to: 'login#new'
  post 'login', to: 'login#create'
  delete 'logout', to: 'login#destroy'

  # ユーザー一覧を表示
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/test', to: 'users#test'
  # トークンを登録更新する
  post '/token', to: 'users#token'
end
