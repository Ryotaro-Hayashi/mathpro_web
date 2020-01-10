Rails.application.routes.draw do
  root 'static_pages#index'
  get  '/home',       to: 'static_pages#home'
  get  '/concept',   to: 'static_pages#concept'
  get  '/usage',    to: 'static_pages#usage'
  get  '/frie',    to: 'static_pages#frie'
  get  '/least_squares1',    to: 'static_pages#least_squares1'
  get  '/least_squares2',    to: 'static_pages#least_squares2'
  get  '/least_squares3',    to: 'static_pages#least_squares3'
  get  '/frie1',    to: 'static_pages#frie1'
  get  '/frie2',    to: 'static_pages#frie2'
  get  '/frie3',    to: 'static_pages#frie3'
end
