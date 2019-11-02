Rails.application.routes.draw do
  devise_for :users,path: '',path_names: {sign_in: 'login', sign_out: 'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'chats#index'
post 'message', to: 'messages#create'

mount ActionCable.server, at: '/cable'
end
