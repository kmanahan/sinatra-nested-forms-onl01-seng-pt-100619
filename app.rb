require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
  get '/' do 
    @pirates = Pirate.all
    erb :'pirates/index'
  end
  
  post '/pirates' do
    @pirate = Student.new(params[:pirate])
 
    params[:pirate][:ships].each do |details|
      Ship.new(details)
    end
 
    @ships = Ship.all
 
    erb :show
  end 
end
end