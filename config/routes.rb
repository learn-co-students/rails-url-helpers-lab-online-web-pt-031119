Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'index', to: 'students#index', as: 'students'
  get 'student/:id', to: 'students#show', as: 'student'
  get 'student/:id/activate', to: 'students#activate', as: 'activate_student'
end