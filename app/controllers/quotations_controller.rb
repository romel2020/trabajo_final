class QuotationsController < ApplicationController
    before_action :authenticate_user!, only: [:login ]
    def index
    end

    def about
    end

    def new
        
        @quotation = Quotation.new
        @document = Document.pluck(:cant)
        @status = Status.pluck(:name)
    end

    def create
        
        @quotation = Quotation.new(quotation_params)
        
        if @quotation.save
            flash[:notice]="La cotizacion fue enviada con exito, dentro de las proximas 24 horas nos comunicaremos con usted"
        else
            flash[:alert]="La cotizacion no fue enviada con exito, intentelo mas tarde"
        end
        redirect_to quotations_new_path
    end
    
    def edit 
        @quotation = @quotation.find(params[:id]) 
    end
    def show
     
     @quotation = Quotation.all.reverse
     @todos = Quotation.where( status: true)
     render layout: "login"
    end
         
    def update
        @quotation = Quotation.find(params[:id])
        @quotation.update(quotation_params)
        @quotation.save
        redirect_to quotations_new_path
    end

    def update_status
        @quotation = Quotation.find(params[:id])
        @quotation.status = !@quotation.status
        @quotation.save
        redirect_to quotations_show_path
    end
          
    def destroy
        @quotation = Quotation.find(params[:id])
        @quotation.destroy
             redirect_to quotations_new_path
    end

    def login
        render layout: "login"
    end
    
    def planes
    end

    def intro
        render layout: "intro"
    end

    private

    def quotation_params
        params.require(:quotation).permit(:name,:last_name,:phone,:email,:profile,:compañy_size,:doc_month,:help_you)
      end

     

end
