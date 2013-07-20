SpellCheck::Application.routes.draw do
  match ':controller(/:action(/:id))(.:format)'
  root :to => 'spellchecks#index'
end
