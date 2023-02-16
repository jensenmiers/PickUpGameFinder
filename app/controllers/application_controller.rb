class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # base url: localhost9292

  # endpoints

  # http verb /path_name do
    # inside this block, we define what happens when a request to this endpoint comes in


  # Add your routes here
  # get route
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  private

    def current_user
      Player.first
    end

end
