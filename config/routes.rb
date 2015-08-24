Rails.application.routes.draw do


  root 'site#index'
  post '/contact' => 'inquiries#create'
  
  get '/about' => 'site#about' 

  get '/privacy' => 'site#privacy'

  get '/terms' => 'site#terms'

  get '/contact' => 'inquiries#new'

end
