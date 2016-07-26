AssignmentRailsMuscleMemory::Application.routes.draw do
  resources :schmarticles

  root to: 'articles#new'
  resources :articles 
end
