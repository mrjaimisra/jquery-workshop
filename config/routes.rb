Rails.application.routes.draw do
  root 'workspace#index'
  get '/name', to: 'workspace#name'
  get '/colors', to: 'workspace#colors'
  get '/visibility', to: 'workspace#visibility'
  get '/headings', to: 'workspace#headings'
  get '/delete_all', to: 'workspace#delete_all'
  get '/clicks', to: 'workspace#clicks'
end
