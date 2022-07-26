class WelcomeController < ApplicationController
  swagger_controller :welcome, "Welcome"

  swagger_api :index do
    summary "Fetches all User items"
    notes "This lists all the active users"
    response :unauthorized
    response :not_acceptable, "The request you made is not acceptable"
    response :ok, "Success"
  end

  def index
    response = {
      greeting: 'Hello world'
    }

    render 200, json: response
  end

  swagger_api :create do
    summary "Creates all User items"
    notes "Creates an active users"
    response :unauthorized
    response :not_acceptable, "The request you made is not acceptable"
    response :ok, "Success"
  end

  def create
    response = {
      greeting: 'Hello world'
    }

    render 200, json: response
  end
end
