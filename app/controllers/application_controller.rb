class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://127.0.0.1:9000', 'http://cyrus-hindsight.herokuapp.com'
    headers['Access-Control-Request-Method'] = '*'
  end
end
