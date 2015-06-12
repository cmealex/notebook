class InvaliditiesController < ApplicationController
  before_action :set_invalidity, only: [:show, :edit, :update, :destroy]

  # GET /invalidities
  # GET /invalidities.json
  def index
    @invalidities = Invalidity.all
  end

  # GET /invalidities/1
  # GET /invalidities/1.json
  def show
  end

  # GET /invalidities/new
  def new
    @invalidity = Invalidity.new
  end

  # GET /invalidities/1/edit
  def edit
  end

  # POST /invalidities
  # POST /invalidities.json
  def create
    @invalidity = Invalidity.new(invalidity_params)

    respond_to do |format|
      if @invalidity.save
        format.html { redirect_to @invalidity, notice: 'Invalidity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @invalidity }
      else
        format.html { render action: 'new' }
        format.json { render json: @invalidity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invalidities/1
  # PATCH/PUT /invalidities/1.json
  def update
    respond_to do |format|
      if @invalidity.update(invalidity_params)
        format.html { redirect_to @invalidity, notice: 'Invalidity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @invalidity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invalidities/1
  # DELETE /invalidities/1.json
  def destroy
    @invalidity.destroy
    respond_to do |format|
      format.html { redirect_to invalidities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invalidity
      @invalidity = Invalidity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invalidity_params
      params.require(:invalidity).permit(:type, :grade)
    end
end
