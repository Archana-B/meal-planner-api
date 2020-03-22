Rails.application.routes.draw do
  scope :api do
    root 'health#info'
    get 'health', to: 'health#info'
    get 'recipes', to: 'recipes#index'
  end
end
