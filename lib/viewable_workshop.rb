class ViewableWorkshop
  def initialize(workshop)
    @workshop = workshop
  end

  def frequency_of_offering
    if online?
      "This workshop is held every month."
    else
      "This in-person workshop is held every six weeks."
    end
  end

  def how_to_get_notified
    if online?
      "Get notified when you can register for next month's workshop."
    else
      "Get notified when the next workshop is scheduled."
    end
  end

  private

  def online?
    @workshop.online?
  end
end
