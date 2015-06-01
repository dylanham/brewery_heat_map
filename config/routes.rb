Rails.application.routes.draw do
  root 'breweries#index'
  get 'brewery_map', to: 'breweries#index'
end
