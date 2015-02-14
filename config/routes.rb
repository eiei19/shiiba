Rails.application.routes.draw do
  devise_for :accounts, :controllers => {
    :sessions => 'accounts/sessions',
    :registrations => 'accounts/registrations'
  }
  root to: "home#index"
  resources :accounts do
    resources :twillios do
      resources :numbers do
      end
    end
  end
end