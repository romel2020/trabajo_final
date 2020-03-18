class PaymentsController < InheritedResources::Base

  private

    def payment_params
      params.require(:payment).permit(:date_ini, :quotes, :date_fini, :mount, :description)
    end

end
