require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative("./models/house_assignment")
also_reload("./models/*")

get "/" do
  @
end
