ContactsSinglePageApp::Application.routes.draw do
  root 'contacts#main'
  get '/contacts', to: 'contacts#main'
end
