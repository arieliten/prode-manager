ActionController::Routing::Routes.draw do |map|

  map.devise_for :admins, :path_names=>{:sign_in=>'login', 
                                        :sign_out=>'logout', 
                                        :password=>'secret'}

  map.devise_for :users, :path_names=>{:sign_in=>'login', 
                                       :sign_out=>'logout', 
                                       :sign_up=>'register', 
                                       :password=>'secret', 
                                       :confirmation => 'verification'}

  map.root :controller => "welcome"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
end
