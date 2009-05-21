ActionController::Routing::Routes.draw do |map|
  map.login   "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.resources :user_sessions
  map.resources :users
  map.resources :projects
  map.resources :sessions
  map.resources :devices

  map.root :controller => "users"
end
