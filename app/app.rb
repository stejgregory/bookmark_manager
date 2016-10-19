require 'sinatra/base'
require_relative 'data_mapper_setup'

ENV["RACK_ENV"] ||= "development"

class BookmarkManager < Sinatra::Base

  get '/' do
    "welcome to the bookmark manager"
  end

  get '/links' do
    @links = Link.all
    erb :'/links/index'
  end

  post '/links' do
    link = Link.new(url: params[:url], title: params[:title])
    tag = Tag.first_or_create(name: params[:tags])
    link.tags << tag
    link.save
    redirect '/links'
  end

  get '/links/new' do
    erb :'/links/new'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
