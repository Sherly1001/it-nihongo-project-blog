class BooksController < ApplicationController
  before_action :set_Book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /Books or /Books.json
  def index
    @Books = Book.all
  end

  # GET /Books/1 or /Books/1.json
  def show
  end

  # GET /Books/new
  def new
    @Book = Book.new
  end

  # GET /Books/1/edit
  def edit
  end

  # POST /Books or /Books.json
  def create
    @Book = Book.new(Book_params)

    respond_to do |format|
      if @Book.save
        format.html { redirect_to @Book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @Book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @Book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Books/1 or /Books/1.json
  def update
    respond_to do |format|
      if @Book.update(Book_params)
        format.html { redirect_to @Book, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @Book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @Book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Books/1 or /Books/1.json
  def destroy
    @Book.destroy
    respond_to do |format|
      format.html { redirect_to Books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Book
      @Book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def Book_params
      params.require(:Book).permit(:title, :number_of_pages, :image)
    end
end
