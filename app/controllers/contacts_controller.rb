class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.order(:name).page(params[:page])
    render layout: "login"
   end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
    @contact = Contact.find(params[:id])
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    if  @contact.save
      redirect_to contact_path(@contact), notice:"Su consulta fue enviada con exito"
    else
      flash.now[:error] = "La consulta no fue enviada"
      redirect_to homes_index_path
   end
   
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    @contact.save
    redirect_to contacts_new_path
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy unless @contact.id.nil?
    redirect_to contacts_path
  end

  def login
    render layout: "nav_admin"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:name, :last_name, :email, :phone, :consult)
    end
end
