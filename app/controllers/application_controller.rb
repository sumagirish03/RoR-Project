class ApplicationController < ActionController::Base
    def landing
        render html: "hello worls"
    end
end
