class QuotationsController < ApplicationController
    before_action :authenticate_user!, only: [:login ]
    def index
     
        @quotation = Quotation.all.reverse
        @todos = Quotation.where( status: true)
        render layout: "login"
    end

    

    def new
        
        @quotation = Quotation.new
        @document = Document.pluck(:name,:id)
        @status = Status.pluck(:name,:id)
       
      
    end

    def create
        
        @quotation = Quotation.new(quotation_params)
        respond_to do |format|
            if @quotation.save
              format.html { redirect_to @quotation, notice: 'Quotation was successfully created.' }
              format.json { render :show, status: :created, location: @quotation }
            else
              format.html { render :new }
              format.json { render json: @quotation.errors, status: :unprocessable_entity }
            end
          end
    end
    
    def edit 
        @quotation = @quotation.find(params[:id]) 
    end
    
    def show
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
    
    

    

    private

    def quotation_params
        params.require(:quotation).permit(:name, :last_name, :phone,:email, :compañy_size, :help_you, :status_id, :document_id)
      end

     

end
