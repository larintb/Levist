class UniformsController < ApplicationController
  before_action :set_uniform, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /uniforms or /uniforms.json
  def index
    @uniforms = Uniform.all
  end

  # GET /uniforms/1 or /uniforms/1.json
  def show
  end

  # GET /uniforms/new
  def new
    @uniform = Uniform.new
  end

  # GET /uniforms/1/edit
  def edit
  end

  # POST /uniforms or /uniforms.json
  def create
    @uniform = Uniform.new(uniform_params)

    respond_to do |format|
      if @uniform.save
        format.html { redirect_to @uniform, notice: "Uniform was successfully created." }
        format.json { render :show, status: :created, location: @uniform }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uniform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uniforms/1 or /uniforms/1.json
  def update
    respond_to do |format|
      if @uniform.update(uniform_params)
        format.html { redirect_to @uniform, notice: "Uniform was successfully updated." }
        format.json { render :show, status: :ok, location: @uniform }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uniform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniforms/1 or /uniforms/1.json
  def destroy
    @uniform.destroy!

    respond_to do |format|
      format.html { redirect_to uniforms_path, status: :see_other, notice: "Uniform was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uniform
      @uniform = Uniform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uniform_params
      params.require(:uniform).permit(:collection, :size, :color, :quantity, :price)
    end
end
