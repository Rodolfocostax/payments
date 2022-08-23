Rails.application.routes.draw do
  post '/transactions', to: 'transactions#create'
end
