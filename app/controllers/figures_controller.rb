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
     #binding.pry
    @figure = Figure.find(params[:id])
    erb:'/figures/show'
  end

  post '/figures' do
      @figure = Figure.create(params[:figure])
      if !params[:title].empty?
        @figure.titles << Title.create(params[:title])
      end
      if !params[:landmark].empty?
        @figure.landmarks << Landmark.create(params[:landmark])
      end
      @figure.save

      redirect to "/figures/#{@figure.id}"
    end

    patch '/figures/:id' do
      @figure = Figure.find(params[:id])
      @figure.update(params[:figure])

      if !params[:title].empty?
        @figure.titles << Title.create(params[:title])
      end

      if !params[:landmark][:name].empty?
        @figure.landmarks << Landmark.create(params[:landmark])
      end

      @figure.save

      redirect to "/figures/#{@figure.id}"
    end

 end
