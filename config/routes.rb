Rails.application.routes.draw do

  #devise_for :users #ye devise ne bna dia khud hi

  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  
  resources :friends  #iski waja se driends pe CRUD easily apply ho rha 
  #get 'home/index'

  get 'home/about'

  #root 'home#index' #ye humne default page bna dia views->home->index ab jab b server chalain ge is folder ma to ye page cle ga
  root 'friends#index'
  #localhost:3000 pe ab ye page chle ga
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
