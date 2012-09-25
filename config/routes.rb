Spree::Core::Engine.routes.prepend do

  namespace :admin do
    resources :log_entries
  end
  
end

