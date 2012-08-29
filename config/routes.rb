BaseSkeleton::Application.routes.draw do
  root :to => "site#home"

  controller :users do
    get "/signup",        :action => :new
    post "/signup",       :action => :create, :as => false
    get "/users/:id",     :action => :show, :as => :user
  end


  controller :sessions do
    get "/login",        :action => :new
    post "/login",       :action => :create, :as => false
    get "/logout",       :action => :destroy
  end
end