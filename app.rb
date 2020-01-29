require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
  get '/' do 
    @pirates = Pirate.all
    erb :'pirates/index'
  end
  
  post '/pirates' do
<<<<<<< HEAD
    @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight] )
 
    params[:pirate][:ships].each do |details|
      ships = Ship.new(details)
      ship.pirate = pirate 
      ship.save
    end
 
=======
    @pirate = Student.new(params[:pirate])
 
    params[:pirate][:ships].each do |details|
      Ship.new(details)
    end
 
    @ships = Ship.all
>>>>>>> 2dbeea44ae33c90cc93a3bc83b88a0a66aae6ff2
 
    erb :show
  end 
end
end