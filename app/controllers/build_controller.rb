# class Licenses::BuildController < ApplicationController

#     include Wicked::Wizard

#     steps :number_of_balls, :duration

#     def show
#         @license = License.find(params[:license_id])
#         render_wizard
#     end

#     def update
#         @license = License.find(params[:license_id])
#         @license.update_attributes(params[:license])
#         render_wizard @license
#     end

#     def create
#         @license = License.create
#         redirect_to wizard_path(steps.first, license_id: @license.id )
#     end
    
# end