Rails.application.routes.draw do

  get 'score/game'

  get 'score/score'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root  "questions#answer"

get '/answer', to: "questions#answer"
get '/ask', to: "questions#ask"

end
