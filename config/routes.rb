Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/heip'
  root "application#hello"
end
