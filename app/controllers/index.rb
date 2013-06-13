get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/color' do
  results = {}
  results[:cell]= rand(1..9)
  results[:color]= "#" + "%06x" % (rand * 0xffffff)
  content_type :json
  results.to_json
end
