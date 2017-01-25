%w(sinatra url_shortener).each {|lib | require lib}
run Sinatra::Application