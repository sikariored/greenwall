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

  def update
    @department = Department.find(params[:id])
    if @department.update role_params
      redirect_to departments_path
    else
      render :edit
    end
  end

  def destroy
    @department = Department.find(params[:id])
    if @department.destroy
      redirect_to departments_path
    else
      render :edit
    end
  end

  private

  def department_params
    params.require(:department).permit(:department_name)
  end
end