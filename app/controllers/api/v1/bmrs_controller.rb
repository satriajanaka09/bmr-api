class Api::V1::BmrsController < ApplicationController

    #GET /bmrs
    def index
        @bmrs = Bmr.all
        render json: @bmrs
    end

    #Save and calculate BMR
    def create

        #assign the value from the request body to data_json variable
        data_json = JSON.parse request.body.read

        #create the new instance from Bmr class
        @bmr = Bmr.new(data_json)

        #doing the calculation
        @bmr.bmr_value = 66.47 + (13.75 * @bmr.weight) + (5.003 * @bmr.height) - (6.755 * @bmr.age)

        if @bmr.save
            render json: @bmr
        else
            render json: {error: 'unable to create BMR data'}, status: 400
        end
    end
end
