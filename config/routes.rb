Rails.application.routes.draw do
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :apidocs, only: [:index]
  mount API => '/'
  mount GrapeSwaggerRails::Engine => '/swagger'

end
