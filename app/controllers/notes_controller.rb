class NotesController < ApplicationController
  def index
    @notes = Note.all
    @note = Note.new
  end

  def show
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      flash[:success] = 'Note added'
      redirect_to notes_path
    else
      @notes = Note.all
      flash.now[:error] = @note.errors.full_messages.join(' ')
      render :index
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :body, { links: [] })
  end
end
