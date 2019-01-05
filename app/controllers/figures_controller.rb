class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
   @figures = Figure.all
   erb :'/figures/index'
 end

 get '/figures/new' do
   erb :'figures/new'
 end

  get '/figures/:id' do
     binding.pry
    @figure = Figure.find(params[:id])
    erb:'/figures/show'
  end

  post '/figures/' do
    binding.pry
  end
end
