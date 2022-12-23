Rails.application.routes.draw do
  get 'test2',to:'index#test'
  get 'test',to:'index#home'
  root "index#home"
end
