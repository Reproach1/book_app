Rails.application.routes.draw do

  root 'main#home'

  get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
