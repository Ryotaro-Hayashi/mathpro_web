Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/concept',   to: 'static_pages#concept'
  get  '/usage',    to: 'static_pages#usage'
  get  '/frie',    to: 'static_pages#frie'
  get  '/newton',    to: 'static_pages#newton'
end
