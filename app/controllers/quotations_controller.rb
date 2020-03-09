class QuotationsController < ApplicationController
    before_action :authenticate_user!, only: [:login ]
    def index
     
        @quotations = Quotation.all.reverse
        @todos = Quotation.where( status: true)
        render layout: "login"
    end

    

    def new
        
        @quotation = Quotation.new
        @document = Document.pluck(:name,:id)
        @position = Position.pluck(:name,:id)
       
      
    end

    def show
        @quotation = Quotation.find(params[:id])
    end

    def create
        
        @quotation = Quotation.new(quotation_params)
        @quotation.save
        redirect_to quotation_show_path(@quotation)
    end
    
    def edit 
        @quotation = Quotation.find(params[:id])
        @document = Document.pluck(:name,:id)
        @position = Position.pluck(:name,:id)
    end
    
   
         
    def update
        @quotation = Quotation.find(params[:id])
        @quotation.update(quotation_params)
        @quotation.save
        redirect_to quotation_new_path
    end

    def update_status
        @quotation = Quotation.find(params[:id])
        @quotation.status = !@quotation.status
        @quotation.save
        redirect_to quotations_index_path
        
    end
          
    def destroy
        @quotation = Quotation.find(params[:id])
        @quotation.destroy
        redirect_to quotations_index_path
    end

    def login
        render layout: "nav_admin"
    end
    
    

    

    private

    def quotation_params
        params.require(:quotation).permit(:name, :last_name, :phone,:email, :compañy_size, :help_you, :position_id, :document_id, :status)
      end

     

end
