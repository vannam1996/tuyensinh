class RegistersController < BaseNotificationsController
  before_action :load_registers, only: %i(index edit update)
  before_action :load_notes_remarking,
    :load_schools, only: [:index, :create]
  authorize_resource

  def index
    if params[:school_id].present?
      load_school
      @majors = @school.majors if @school
    end
    if params[:major_id].present?
      load_school
      load_major
      @departments = @major.departments if @major
    end
    if request.xhr?
      render partial: "new_register"
    end
  end

  def create
    @register = current_user.registers.new register_params
    if @register.save
      @success = t "success"
    else
      @error = t "error"
    end
  end

  def edit

  end

  def update
    registers = []
    @registers.each.with_index do |register, index|
      register.aspiration = params[:aspiration][index]
      register.department_id = params[:department][index]
      registers << register
    end
    Register.import registers, on_duplicate_key_update: [:aspiration, :department_id]
    redirect_to registers_path
  end

  def destroy
    load_register
    if @register && @register.destroy
      @success = t "deleted_success"
    else
      @error = t "deleted_failure"
    end
  end

  private

  def register_params
    params.require(:register).permit :major_id, :department_id, :aspiration
  end

  def load_registers
    @registers = current_user.registers.order(aspiration: :asc)
  end

  def load_notes_remarking
    @note = Note.aspiration.get_year(DateTime.now.year).first
    return if @note
    @error = t "not_time_change_register"
  end

  def load_schools
    @schools = School.all
  end

  def load_school
    @school = School.find_by id: params[:school_id]
  end

  def load_major
    @major = Major.find_by id: params[:major_id]
  end

  def load_register
    @register = Register.find_by id: params[:id]
  end
end
