class ResultsController < BaseNotificationsController
  before_action :current_ability
  authorize_resource

  def index
    @results = Result.get_year Date.today.year
  end
end
