
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  get '/posts' do
    erb :index
  end
  
  get '/posts/new' do
    erb :new
  end
  
  post '/posts' do
    
  end
  
  get '/posts/:id' do
    @post = Post.find params[:id]
    erb :show
  end
  
  get 'posts/:id/edit' do
    
  end
  
  patch '/posts/:id' do
    @post.update {name: params[:name], content: params[:content]}
  end
  
  delete '/posts/:id' do
    @post = Post.find params[:id]
    @post.destroy
  end
end
  