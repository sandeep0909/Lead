class ContactsController < ApplicationController
  def index
    @user = User.find(current_user)
    if @user.role<3
      @contacts=@user.contacts
    else
      @contacts = Contact.all
    end
  end

  def show
    @contact=Contact.find(params[:id])
  end

  def new
    @contact= current_user.contacts.new
  end

  def edit
    @contact = current_user.contacts.find(params[:id])
  end

  def create
    # @user = User.find params[:user_id]
    @contact=current_user.contacts.new contact_params
    if @contact.save
      redirect_to user_path(current_user)
    end
  end


  def update
    @contact=Contact.find(params[:id])
    if @contact.update(contact_params)
    redirect_to user_path(current_user)
    else
    render :edit
    end
  end

  def destroy
  end
  private
  def contact_params
    params.require(:contact).permit(:name, :phone, :email)
  end
end
