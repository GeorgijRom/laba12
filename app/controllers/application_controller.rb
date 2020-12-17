class ApplicationController < ActionController::Base
    before_action :check_authorization
    private
        def check_authorization()
            if session[:user_id] == nil
                redirect_to "/"
            else
            end                
        end    
end
