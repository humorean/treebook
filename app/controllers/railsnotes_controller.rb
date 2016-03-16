class RailsnotesController < ApplicationController
  before_action :set_railsnote, only: [:show, :edit, :update, :destroy]

  # GET /railsnotes
  # GET /railsnotes.json
  def index
    @railsnotes = Railsnote.all
  end

  # GET /railsnotes/1
  # GET /railsnotes/1.json
  def show
  end

  # GET /railsnotes/new
  def new
    @railsnote = Railsnote.new
  end

  # GET /railsnotes/1/edit
  def edit
  end

  # POST /railsnotes
  # POST /railsnotes.json
  def create
    @railsnote = Railsnote.new(railsnote_params)

    respond_to do |format|
      if @railsnote.save
        format.html { redirect_to @railsnote, notice: 'Railsnote was successfully created.' }
        format.json { render :show, status: :created, location: @railsnote }
      else
        format.html { render :new }
        format.json { render json: @railsnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railsnotes/1
  # PATCH/PUT /railsnotes/1.json
  def update
    respond_to do |format|
      if @railsnote.update(railsnote_params)
        format.html { redirect_to @railsnote, notice: 'Railsnote was successfully updated.' }
        format.json { render :show, status: :ok, location: @railsnote }
      else
        format.html { render :edit }
        format.json { render json: @railsnote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railsnotes/1
  # DELETE /railsnotes/1.json
  def destroy
    @railsnote.destroy
    respond_to do |format|
      format.html { redirect_to railsnotes_url, notice: 'Railsnote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railsnote
      @railsnote = Railsnote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def railsnote_params
      params.require(:railsnote).permit(:title, :content, :JS_Equilavent)
    end
end
