class RolesController < ApplicationController
  def index
    @all_roles = Role.all
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new role_params
    if @role.save
      redirect_to roles_path
      flash[:notice] = "Новая роль создана"
    else
      render :new
      flash[:alert] = "Ошибка при создании новой роли"
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def destroy
    @role = Role.find(params[:id])

    if @role.accounts.count > 0
      flash[:alert] = "Нельзя удалить роль. Она привязана к пользователям. Кол-во: #{@role.accounts.count}"
      render :edit
    elsif @role.accounts.count == 0
      @role.destroy
      redirect_to roles_path
      flash[:notice] = "Роль удалена"
    end
  end

  private

  def role_params
    params.require(:role).permit(:name, :department_access)
  end
end