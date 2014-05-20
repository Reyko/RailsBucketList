Rails.application.routes.draw do

  # resources :destinations, :only => [] do
  #   member do
  #     # TODO: Add routes in here that NEED to know the ID
  #     get :show
  #     get :edit
  #     patch :update
  #     delete :destroy
  #   end


  #   collection do
  #     get :index
  #     get :new
  #     post :create
  #   end
  # end

  resources :destinations do
    resources :to_do_items
  end

end
