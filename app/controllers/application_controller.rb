class ApplicationController < ActionController::API
    before_action :allow_cross_domain
  def allow_cross_domain
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Request-Method'] = 'POST, OPTIONS'
  end
end
