class IndexController < ApplicationController
    skip_before_action :check_authorization, only: [:index]
    def index
    end    
end
