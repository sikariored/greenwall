class NotesController < ApplicationController
  def index
    @all_notes = Note.all
    @current_account_notes = Note.where(account_id: current_account.id)
  end

  def show
    @note = Note.find(params[:id])
  end
  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path
      flash[:notice] = "Заметка успешно создана"
    else
      render :new
      flash[:alert] = "Ошибка при создании заметки #{@note.errors.full_messages }"
    end
  end
  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to notes_path
      flash[:notice] = "Заметка успешно обновлена"
    else
      render :edit
      flash[:alert] = "Ошибка при обновлении заметки"
    end
  end

  def destroy
    @note = Note.find(params[:id])
    if @note.destroy
      redirect_to notes_path
      flash[:notice] = "Заметка удалена"
    else
      flash[:alert] = "Ошибка при удалении заметки"
      render :edit
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :body, :account_id)
  end
end