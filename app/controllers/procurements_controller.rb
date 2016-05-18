class ProcurementsController < InheritedResources::Base

  private

    def procurement_params
      params.require(:procurement).permit(:name, :details)
    end
end

