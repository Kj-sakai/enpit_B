class VideolistsController < ApplicationController
  before_action :set_videolist, only: [:show, :edit, :update, :destroy]

  # GET /videolists
  # GET /videolists.json
  def index
    @videolists = Videolist.all
  end

  # GET /videolists/1
  # GET /videolists/1.json
  def show
  end

  # GET /videolists/new
  def new
    @videolist = Videolist.new
  end

  # GET /videolists/1/edit
  def edit
  end

  # POST /videolists
  # POST /videolists.json
  def create
    @videolist = Videolist.new(videolist_params)

    respond_to do |format|
      if @videolist.save
        format.html { redirect_to @videolist, notice: 'Videolist was successfully created.' }
        format.json { render :show, status: :created, location: @videolist }
      else
        format.html { render :new }
        format.json { render json: @videolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videolists/1
  # PATCH/PUT /videolists/1.json
  def update
    respond_to do |format|
      if @videolist.update(videolist_params)
        format.html { redirect_to @videolist, notice: 'Videolist was successfully updated.' }
        format.json { render :show, status: :ok, location: @videolist }
      else
        format.html { render :edit }
        format.json { render json: @videolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videolists/1
  # DELETE /videolists/1.json
  def destroy
    @videolist.destroy
    respond_to do |format|
      format.html { redirect_to videolists_url, notice: 'Videolist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videolist
      @videolist = Videolist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videolist_params
      params.require(:videolist).permit(:videoid, :videoURL, :flag, :title, :category, :author, :description, :uptime, :tag)
    end
end
