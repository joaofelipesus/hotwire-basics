class FightersController < ApplicationController
  before_action :set_fighter, only: %i[ show edit update destroy ]

  # GET /fighters or /fighters.json
  def index
    @fighters = Fighter.all
  end

  # GET /fighters/1 or /fighters/1.json
  def show
  end

  # GET /fighters/new
  def new
    @fighter = Fighter.new
  end

  # GET /fighters/1/edit
  def edit
  end

  # POST /fighters or /fighters.json
  def create
    @fighter = Fighter.new(fighter_params)

    respond_to do |format|
      if @fighter.save
        format.html { redirect_to fighter_url(@fighter), notice: "Fighter was successfully created." }
        format.json { render :show, status: :created, location: @fighter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fighter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fighters/1 or /fighters/1.json
  def update
    respond_to do |format|
      if @fighter.update(fighter_params)
        format.html { redirect_to fighter_url(@fighter), notice: "Fighter was successfully updated." }
        format.json { render :show, status: :ok, location: @fighter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fighter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fighters/1 or /fighters/1.json
  def destroy
    @fighter.destroy!

    respond_to do |format|
      format.html { redirect_to fighters_url, notice: "Fighter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fighter
      @fighter = Fighter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fighter_params
      params.require(:fighter).permit(:name, :weight_class, :fight_record)
    end
end
