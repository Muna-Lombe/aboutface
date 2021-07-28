class Api::V1::UserSessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

  def manual_create
    user = User.find_by(email: params[:email])
    if user.nil?
      user = User.create(email: params[:email], password:Devise.friendly_token)
    end

    token = Tiddle.create_and_return_token(user, request)
    response =  {
      user: user,
      headers: {
        "X-USER-EMAIL"=> user.email,
        "X-USER-TOKEN"=> token
      }
    }
    render json: response
  end

  def login
    wechat_params = {
      appId: ENV["WECHAT_APP_ID"],
      secret: ENV["WECHAT_APP_SECRET"],
      js_code: params[:code],
      grant_type: "authorization_code"
    }

    @wechat_response = RestClient.get(URL, params: wechat_params)
    @wechat_user = JSON.parse(@wechat_response.body)
    puts "wx login result => #{@wechat_user}"
    open_id = @wechat_user["openid"]
    user = User.find_by(open_id: open_id)

    if user.nil?
      user = User.create(email: params[:email], password:Devise.friendly_token, open_id: open_id)
    end

    token = Tiddle.create_and_return_token(user, request)

    response =  {
      user: user,
      headers: {
        "X-USER-EMAIL"=> user.email,
        "X-USER-TOKEN"=> token
      }
    }
    render json: response

  end
end
