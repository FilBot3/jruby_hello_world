#require "jruby_hello_world/version"
require 'sinatra'
require 'sinatra/base'

module JrubyHelloWorld
  class HelloWorld < Sinatra::Base
    get '/' do
      "Hello World"
    end
  end
end

#JrubyHelloWorld::HelloWorld.run!
