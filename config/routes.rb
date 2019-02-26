Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

get 'holiday', to: "holiday#index"
get 'users', to: "users#index"

end
