class ProcurementsController < InheritedResources::Base
  load_and_authorize_resource
  
  private

    def procurement_params
      params.require(:procurement).permit(:name, :details)
    end
end
