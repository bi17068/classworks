Rails.application.routes.draw do
  resources :books
  resources :home, only: [:index, :create, :new]
  get 'home/top'
  get "home/input_booksdata"
  get "home/join_test"
  get "home/join_test2"
  get "home/readBarcode"
  get "home/useGoogleBook"
  get 'home/map/:isbn' => "home#map"
  get 'home/result'
  get "home/detail/:isbn" => "home#detail"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
