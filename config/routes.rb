Rails.application.routes.draw do
  get 'static_pages/index'

  get 'static_pages/about'

  root 'application#hello'
end
