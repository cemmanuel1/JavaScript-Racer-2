get '/' do
  erb :index
end

get '/race/:id' do
  @race = Race.find(params[:id])
  if request.xhr?
    content_type :json
    @race.to_json(:include => :players)
  else
    erb :race  
  end
end

post '/race' do
  race = Race.create()
  check_players(race.id, params[:player1], params[:player2])
  redirect "/race/#{race.id}"
end
