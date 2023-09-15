class ApplicationController < ActionController::API
    def hello
        render json: { message: 'hello world' }
    end
end
