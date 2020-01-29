require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
  get '/' do 
    @pirates = Pirate.all
    erb :'pirates/index'
  end
  
  post '/pirates' do

    @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight] )
 
    params[:pirate][:ships].each do |details|
      ships = Ship.new(details)
      ship.pirate = pirate 
      ship.save
    end
 
    erb :show
  end 
end
end