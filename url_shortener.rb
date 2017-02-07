require 'sinatra'
require 'sinatra/reloader'
require 'data_mapper'
require 'sqlite3'
require 'pry'


DataMapper::Logger.new($stdout, :debug)
DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/shorturl.db")
DataMapper::Model.raise_on_save_failure = true

get '/' do
  @urls = Url.all
  erb :index  
end

post '/' do
  u = Url.new
  u.original = params[:original]
  u.save

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

class Url
  include DataMapper::Resource
  property :id,       Serial
  property :original, String, :length => 255
  # belongs_to  :link
end

# class Link
#   include DataMapper::Resource
#   property  :identifier,  String, :key  => true
#   property  :created_at,  DateTime
#   has 1, :url

#   def self.shorten(original, custom=nil)
#     url = Url.first(:original => original)
#     return url.link if url
#     link = nil
#     if custom 
#       transaction do |txn|
#         link = Link.new(:identifier => custom)
#         link.url = Url.create(:original => original)
#         link.save
#       end
#     else
#       transaction do |txn|
#         link = create_link(original)
#       end
#     end
#     return link
#   end

#   private

#   def self.create_link(original)
#     url = Url.create(:original => original)
#     if Link.first(:identifier => url.id.to_s).nil?
#       link = Link.new(:identifier => url.id.to_s)
#       link.url = url
#       link.save
#       return link
#     else
#       create_link(original)
#     end
#   end
# end

DataMapper.finalize.auto_upgrade!