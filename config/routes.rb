Rails.application.routes.draw do
  resources :attachments_encryption_disable_domain_tos
  resources :attachments_encryption_disable_domain_froms
  resources :attachments_encryption_disable_emails
  resources :bcc_conversion_disable_domains
  root to: 'settings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
