class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.find(:all)
  end
end
