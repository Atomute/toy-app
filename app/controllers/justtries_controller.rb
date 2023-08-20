class JusttriesController < ApplicationController
  before_action :set_justtry, only: %i[ show edit update destroy ]

  # GET /justtries or /justtries.json
  def index
    @justtries = Justtry.all
  end

  # GET /justtries/1 or /justtries/1.json
  def show
  end

  # GET /justtries/new
  def new
    @justtry = Justtry.new
  end

  # GET /justtries/1/edit
  def edit
  end

  # POST /justtries or /justtries.json
  def create
    @justtry = Justtry.new(justtry_params)

    respond_to do |format|
      if @justtry.save
        format.html { redirect_to justtry_url(@justtry), notice: "Justtry was successfully created." }
        format.json { render :show, status: :created, location: @justtry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @justtry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /justtries/1 or /justtries/1.json
  def update
    respond_to do |format|
      if @justtry.update(justtry_params)
        format.html { redirect_to justtry_url(@justtry), notice: "Justtry was successfully updated." }
        format.json { render :show, status: :ok, location: @justtry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @justtry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /justtries/1 or /justtries/1.json
  def destroy
    @justtry.destroy

    respond_to do |format|
      format.html { redirect_to justtries_url, notice: "Justtry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_justtry
      @justtry = Justtry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def justtry_params
      params.require(:justtry).permit(:test, :trying)
    end
end
