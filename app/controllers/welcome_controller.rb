class WelcomeController < ApplicationController
  def index
    response = {
      greeting: 'Hello world'
    }

    render 200, json: response
  end
end
