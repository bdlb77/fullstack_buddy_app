Rails.application.routes.draw do
  # redifine routes for sign_in -> login, sign_out -> logout
  devise_for :users, controllers: { sessions: 'api/v1/users/sessions', registrations: 'api/v1/users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
