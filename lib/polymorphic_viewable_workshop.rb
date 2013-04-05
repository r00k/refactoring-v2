class WorkshopsController < ActionController::Base
  def show
    workshop = Workshop.find(params[:id])
    @viewable_workshop = presenter_for(workshop)
  end

  private

  def presenter_for(workshop)
    if workshop.online?
      OnlineViewableWorkshop.new(workshop)
    else
      InPersonViewableWorkshop.new(workshop)
    end
  end
end
