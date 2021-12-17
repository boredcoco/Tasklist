class MySettingsController < ApplicationController
  before_action :set_my_setting, only: %i[ show edit update destroy ]

  # GET /my_settings or /my_settings.json
  def index
    @my_settings = MySetting.all
  end

  # GET /my_settings/1 or /my_settings/1.json
  def show
  end

  # GET /my_settings/new
  def new
    @my_setting = MySetting.new
  end

  # GET /my_settings/1/edit
  def edit
  end

  # POST /my_settings or /my_settings.json
  def create
    @my_setting = MySetting.new(my_setting_params)

    respond_to do |format|
      if @my_setting.save
        format.html { redirect_to @my_setting, notice: "My setting was successfully created." }
        format.json { render :show, status: :created, location: @my_setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_settings/1 or /my_settings/1.json
  def update
    respond_to do |format|
      if @my_setting.update(my_setting_params)
        format.html { redirect_to @my_setting, notice: "My setting was successfully updated." }
        format.json { render :show, status: :ok, location: @my_setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_settings/1 or /my_settings/1.json
  def destroy
    @my_setting.destroy
    respond_to do |format|
      format.html { redirect_to my_settings_url, notice: "My setting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_setting
      @my_setting = MySetting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_setting_params
      params.require(:my_setting).permit(:happiness_bar, :color_red, :color_blue, :color_green)
    end
end
