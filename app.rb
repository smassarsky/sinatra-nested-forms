require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      pirate = params[:pirate]
      @pirate = Pirate.new(pirate[:name], pirate[:height], pirate[:weight])
      ship1 = pirate[:ships][0]
      @ship1 = Ship.new(ship1[:name], ship1[:type], ship1[:booty])
      ship2 = pirate[:ships][1]
      @ship2 = Ship.new(ship2[:name], ship2[:type], ship2[:booty])
      erb :"pirates/show"
    end
    
  end
end
