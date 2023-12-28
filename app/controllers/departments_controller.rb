class DepartmentsController < ApplicationController
  def index
    @all_departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
    @department_accounts = @department.accounts
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new department_params
    if @department.save
      redirect_to departments_path
    else
      render :new
    end
  end

  def edit
    @department = Department.find(params[:id])
  end

  def destroy
    @department = Department.find(params[:id])
    if @department.accounts.count > 0
      flash[:alert] = "Нельзя удалить отдел в котором есть пользователи. Кол-во: #{@department.accounts.count}"
      render :edit
    elsif @department.accounts.count == 0
      @department.destroy
      redirect_to departments_path
      flash[:notice] = "Отдел удален"
    end
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end
end