class LicensesController < ApplicationController

    include Wicked::Wizard
    steps :applicant_name, :license_details

    def index
        @licenses = License.all
    end

    def new
        redirect_to license
    end

    def show
        case step
        when :applicant_name
            @license = License.new
            session[:license] = nil
        else
            @license = License.new(session[:license])
        end
        render_wizard
    end

    def update
        case step

        when :applicant_name
          @license = License.new(license_params)
          session[:license] = @license.attributes
          redirect_to next_wizard_path

        when :license_details
            session[:license] = session[:license].merge(license_params)
            @license = License.new(session[:license])
            @license.save
            redirect_to root_path
        end

    end

    private
    
    def license_params
        params.require(:license).permit(:applicant, :number_of_balls, :duration)
    end

end