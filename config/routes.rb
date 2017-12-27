Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  # post 'contact', to: 'contacts#process_form'
  root to: 'visitors#new'
end
