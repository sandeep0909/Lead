class ActivitiesController < ApplicationController
  def index
    # @contact = Contact.find(params[:contact_id]) if params[:contact_id]
    # @activities = @contact.activities || Activity.all
    if current_user.role == 3
      @activities = Activity.all
    else
      @activities = current_user.activities
    end

  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @contact=Contact.new(params[:contact_id])
    @activity = Activity.new
  end

  def edit
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @activity=@contact.activities.new activity_params
      if @activity.save
        redirect_to contact_path
      end
  end

  def update
  end

  def destroy
  end
  private
  def activity_params
      params.require(:activity).permit(:name, :description, :status)
    end
end
