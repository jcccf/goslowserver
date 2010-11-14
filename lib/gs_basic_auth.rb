module GSBasicAuthentication
  USERNAME, PASSWORD = "sircatsalot", "purrrrrr"
  
  private
    def authenticate
      authenticate_or_request_with_http_basic do |user_name, password|
        user_name == USERNAME && password == PASSWORD
      end
    end
end