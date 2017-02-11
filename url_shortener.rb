require 'sinatra'
require 'sinatra/reloader'
require 'pry'

before do 
  @session[:orig_urls] ||= []
  @session[:short_urls] ||= []
  @session[:stats] ||= []
end

get '/' do
  @urls = @session[:orig_urls]
  erb :index  
end

# *** REMEMBER TO MERGE BACK TO MASTER ***

post '/' do
  # u = Url.new
  # u.original = params[:original]
  # u.save

  redirect '/'
end

get '/:short_url' do 
end

# delete '/:id' do
#   n = Note.get params[:id]
#   n.destroy
#   redirect '/'
# end

# get '/:id/complete' do
#   n = Note.get params[:id]
#   n.complete = n.complete ? 0 : 1 # flip it
#   n.updated_at = Time.now
#   n.save
#   redirect '/'
# end
