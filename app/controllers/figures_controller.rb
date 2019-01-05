class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
   @figures = Figure.all
   erb :'/figures/index'
 end

 get '/figures/new' do
   binding.pry
   erb :'figures/new'
 end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb:'/figures/show'
  end

  post '/figures/' do
    binding.pry
  end
end
