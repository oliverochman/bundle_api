Rails.application.routes.draw do
  namespace do
    resources :events, only: %i[index show]
  end
end
