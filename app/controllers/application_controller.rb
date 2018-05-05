class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :room_chat

  rescue_from CanCan::AccessDenied do |exception|
    flash[:danger] = I18n.t "permission_denied"
    redirect_to main_app.root_url
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    @error_message = exception.model
    respond_to do |format|
      format.js{render "errors/error", status: 401}
    end
  end

  protected

  def room_chat
    if user_signed_in? && current_user.student?
      @room = ChatRoom.find_by user_id: current_user.id
      @messages = @room.messages if @room
      return if @room
      @room = ChatRoom.new user_id: current_user.id
      @room.save
    end
  end

  def current_ability
    controller_name_segments = params[:controller].split("/")
    controller_name_segments.pop
    controller_namespace = controller_name_segments.join("/").camelize
    Ability.new(current_user, controller_namespace)
  end

  def load_school_teacher
    @school = current_user.school if current_user.teacher?
    return if @school
    flash[:danger] = t "permission_denied"
    redirect_to root_url
  end

  def top_major
    @top_target = Target.includes(:major).top_mark(1.year.ago.year).first
  end

  def hot_major
    @hot_major = Major.hot_major(DateTime.now.year).first
  end

  private

  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end
end
