Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'week/:week_num', to: 'disburses#index'
      get 'week/:week_num/merchant/:merchant_id', to: 'disburses#show'
    end
  end
end
