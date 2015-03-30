class Admin::WorkshopsController < Admin::AdminController
  before_filter :set_workshop, only: [:edit, :update, :destroy]

  def index
    # render text: "workshops"
    @workshop = Workshop.new
    @workshops = Workshop.all
  end

  def create
    workshop = Workshop.create(workshop_params)
    if workshop.save
      redirect_to admin_workshops_url()
    else
      render text: 'fail'
      # render 'index'
    end
  end

  def update
    @workshop.update(workshop_params)
    if @workshop.save
      redirect_to admin_workshops_path, notice: 'Workshop was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @workshop.delete
    redirect_to admin_workshops_path, notice: 'Workshop was successfully destroyed.'
  end

private

  def set_workshop
    @workshop = Workshop.find(params[:id])
  end

  def workshop_params
    params.require(:workshop).permit(:title, :description, :type, :type_list, :cover_image, :audience_list, :tag_list)
  end
end
