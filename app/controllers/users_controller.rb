class UsersController < BaseNotificationsController
  skip_before_action :verify_authenticity_token
  before_action :current_ability
  before_action :load_user, only: %i(show edit update)
  before_action :load_aspiration, :load_results, only: :show
  before_action :load_notifications, only: :show
  load_and_authorize_resource param_method: :user_params

  def show; end

  def edit; end

  def update
    if @user.update_attributes user_params
      load_aspiration
      load_results
      flash[:success] = t "update_success"
    else
      flash[:danger] = t "update_failure"
    end
    redirect_to @user
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "nil_user"
    redirect_to root_url
  end

  def load_user_ajax
    @user = User.find_by id: params[:id]
    return if @user
    @error = t "nil_user"
  end

  def user_params
    params[:user][:sex] = params[:user][:sex].to_i if params[:user]
    params.require(:user).permit :birthday, :address, :phone, :avatar, :sex,
      :religion, :nation, :nationality
  end

  def load_aspiration
    return if @user.blank?
    @registers = @user.registers
  end

  def load_results
    @results = current_user.results
  end
end
