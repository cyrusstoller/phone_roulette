require 'sinatra'
require './bit_flip'

def get_or_post(path, opts={}, &block)
  get(path, opts, &block)
  post(path, opts, &block)
end

class PhoneRoulette < Sinatra::Base
  include BitFlip
  set :root, File.dirname(__FILE__)
  set :views, Proc.new { File.join(root, "views") }
  
  get "/" do
    "welcome to phone roulette. why are you using the web interface ...? this is phone only. Call #{ENV["TWILIO_PHONE_NUMBER"]}."
  end
  
  get_or_post '/roulette.xml' do
    if flip_even_odd
      erb :agent_call, :content_type => :xml
    else
      erb :customer_call, :content_type => :xml
    end
  end
  
  get_or_post '/about_to_connect.xml' do
    erb :about_to_connect, :content_type => :xml
  end
end