Rails.application.routes.draw do
  get 'decks/index'

  get 'decks/show'

  get 'decks/new'

  get 'decks/create'

  get 'decks/edit'

  get 'decks/update'

  get 'decks/destroy'

  get 'cards/index'

  get 'cards/show'

  get 'cards/new'

  get 'cards/create'

  get 'cards/edit'

  get 'cards/update'

  get 'cards/destroy'

  get 'users/new'

  get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
