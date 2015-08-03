Rails.application.routes.draw do

  root to: 'creatures#index'

  resources :creatures #only: [:index, :show, :create]
end


#        Prefix Verb   URI Pattern                   Controller#Action
#          root GET    /                             creatures#index
#     creatures GET    /creatures(.:format)          creatures#index
#               POST   /creatures(.:format)          creatures#create
#  new_creature GET    /creatures/new(.:format)      creatures#new
# edit_creature GET    /creatures/:id/edit(.:format) creatures#edit
#      creature GET    /creatures/:id(.:format)      creatures#show
#               PATCH  /creatures/:id(.:format)      creatures#update
#               PUT    /creatures/:id(.:format)      creatures#update
#               DELETE /creatures/:id(.:format)      creatures#destroy
