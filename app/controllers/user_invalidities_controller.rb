class UserInvaliditiesController < ApplicationController
  before_action :set_user_invalidity, only: [:show, :edit, :update, :destroy]

  # GET /user_invalidities
  # GET /user_invalidities.json
  def index
    @user_invalidities = UserInvalidity.all
  end

  # GET /user_invalidities/1
  # GET /user_invalidities/1.json
  def show
  end

  # GET /user_invalidities/new
  def new
    @user_invalidity = UserInvalidity.new
  end

  # GET /user_invalidities/1/edit
  def edit
  end

  # POST /user_invalidities
  # POST /user_invalidities.json
  def create
    @user_invalidity = UserInvalidity.new(user_invalidity_params)

    respond_to do |format|
      if @user_invalidity.save
        format.html { redirect_to @user_invalidity, notice: 'User invalidity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_invalidity }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_invalidity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_invalidities/1
  # PATCH/PUT /user_invalidities/1.json
  def update
    respond_to do |format|
      if @user_invalidity.update(user_invalidity_params)
        format.html { redirect_to @user_invalidity, notice: 'User invalidity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_invalidity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_invalidities/1
  # DELETE /user_invalidities/1.json
  def destroy
    @user_invalidity.destroy
    respond_to do |format|
      format.html { redirect_to user_invalidities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_invalidity
      @user_invalidity = UserInvalidity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_invalidity_params
      params.require(:user_invalidity).permit(:userId, :invalidityId, :grade)
    end
end
