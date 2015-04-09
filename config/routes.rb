Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#index'

  get "/:zip" => "pages#home"
end
