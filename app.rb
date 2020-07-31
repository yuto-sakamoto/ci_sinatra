require 'sinatra'

get '/' do
  'Hello world!'
end

# ヘルスチェック用のURLを追記
get '/health_check' do
  'ok'
end
