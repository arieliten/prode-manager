ActionController::Routing::Routes.draw do |map|
  map.devise_for :admins, :path_names=>{:sign_in=>'login', 
                                        :sign_out=>'logout', 
                                        :password=>'secret'}

  map.devise_for :users, :path_names=>{:sign_in=>'login', 
                                       :sign_out=>'logout', 
                                       :sign_up=>'register', 
                                       :password=>'secret',
                                       :confirmation => 'verification'}

  ### Admin Nampespace (including competitions, stages, teams, clasifications, groups, matches, etc)
  map.namespace :admin do |admin|
    admin.resources :competitions do |competition|
      competition.resources :teams do |team|
      #  teams.resources :players
      end
      competition.resources :stages do |stage|
        stage.resources :clasifications
        stage.resources :groups
        stage.resources :matches
      end
    end
  end

  map.resources :pools

  map.root :controller => "welcome"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
end
