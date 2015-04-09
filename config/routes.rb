Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'

  get "/:zip" => "pages#home"
end
