class Api::V1::BmrsController < ApplicationController

    #GET /bmrs
    def index
        @bmrs = Bmr.all
        render json: @bmrs
    end

end
