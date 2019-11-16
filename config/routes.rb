Rails.application.routes.draw do
  root 'static_pages#index'
  get  '/home',       to: 'static_pages#home'
  get  '/concept',   to: 'static_pages#concept'
  get  '/usage',    to: 'static_pages#usage'
  get  '/frie',    to: 'static_pages#frie'
  get  '/least_squares',    to: 'static_pages#least_squares'
end
