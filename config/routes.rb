resources :projects do
  get   'gollum_pages/:id/raw'  => 'gollum_pages#raw', :as => :raw
  resources :gollum_pages do
    collection do
      post 'preview'
    end
  end
  resource :gollum_wiki
end
