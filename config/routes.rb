resources :projects do
  match 'file/:id.:ext' => 'gollum_pages#file'
  match 'gollum_pages/file/:id.:ext' => 'gollum_pages#file'

  match 'upload' => 'gollum_pages#upload'
  resources :gollum_pages do
    collection do
      post 'preview'
    end
  end
  resource :gollum_wiki
end
