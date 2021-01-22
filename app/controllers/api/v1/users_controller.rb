class Api::V1::UsersController < Api::V1::BaseController
  def index
    response = RestClient.get "https://jsonmock.hackerrank.com/api/ip/#{request.remote_ip}"
    user = JSON.parse(response)

    @user = User.create(
      ip: user["data"]["ip"],
      country: user["data"]["country"],
      language: user["data"]["language"],
    )
  end
end