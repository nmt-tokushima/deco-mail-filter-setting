Rails.application.routes.draw do
  resources :attachments_encryption_disable_domain_tos, except: [:show]
  resources :attachments_encryption_disable_domain_froms, except: [:show]
  resources :attachments_encryption_disable_emails, except: [:show]
  resources :bcc_conversion_disable_domains, except: [:show]
  root to: 'settings#index'
  resources :settings, only: [:create]
  get '/api/v1/setting.json', to: 'settings#index_api_v1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
