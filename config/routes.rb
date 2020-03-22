Rails.application.routes.draw do
  scope :api do
    get 'health', to: 'health#info'
  end
end
