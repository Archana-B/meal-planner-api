class HealthController < ApplicationController
    def info
        render json: { message: "Application is up and running" }
    end
end
