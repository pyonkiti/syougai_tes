Rails.application.routes.draw do
  
  resources :syougais, only: [:index, :edit, :update, :new, :create, :destroy]

=begin
  get 'syougais/index'
  get 'syougais', to: 'syougais#index'

  patch 'syougais/index'
  patch 'syougais', to: 'syougais#index'

  get 'syougais/search'
  get 'syougais/search', to: 'syougais#search'

  get 'syougais/edit'
  get 'syougais/:id/edit', to: 'sougais#edit'
  
  patch 'syougais/edit'
  patch 'syougais/:id/edit', to: 'sougais#edit'

  post 'syougais/edit'
  post 'syougais/:id/edit', to: 'sougais#edit'

  get 'syougais/add'


=end

  root to: 'syougais#index'
  #root to: 'syougais#edit'
end
