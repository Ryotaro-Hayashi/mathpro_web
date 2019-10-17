Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/question',    to: 'static_pages#question'
  get  '/login',    to: 'static_pages#login'
  get  '/frie',    to: 'static_pages#frie'
  get  '/newton',    to: 'static_pages#newton'
end
