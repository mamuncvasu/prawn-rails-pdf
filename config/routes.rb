Rails.application.routes.draw do
  get 'test',to:'index#test'
  get 'test2',to:'index#home'
  root "index#home"
end
