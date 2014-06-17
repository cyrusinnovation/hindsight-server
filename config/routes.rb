HindsightServer::Application.routes.draw do
  resources :retrospective, :only => [:create]
end
