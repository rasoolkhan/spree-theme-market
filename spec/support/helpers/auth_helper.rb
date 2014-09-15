module AuthHelper
  def http_login
    name = 'tracy'
    password = 'super_secure'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(name,password)
  end  
end