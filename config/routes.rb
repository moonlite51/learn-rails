Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  # post 'contact', to: 'contacts#process_form'
  root to: 'visitors#new'
end
