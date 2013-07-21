SpellCheck::Application.routes.draw do
  resources :spellchecks, only: :index
  root :to => 'spellchecks#index'
end
