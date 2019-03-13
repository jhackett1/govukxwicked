class LicensesController < ApplicationController

 
    def index
        @licenses = License.all
    end

    def new
        @license = License.new
    end

    def create
        @license = License.new(license_params)

        if @license.save
            redirect_to licenses_path, notice: 'Idea was successfully created.' 
        else
            render new_license_path
        end

    end
    
    private

    def license_params
        params.require(:license).permit(:number_of_balls, :duration)
    end

end