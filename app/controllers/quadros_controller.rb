class QuadrosController < ApplicationController
  before_action :set_quadro, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :galeria]

  # GET /quadros
  # GET /quadros.json
  def index
    @quadros = Quadro.all
  end

  # GET /quadros/1
  # GET /quadros/1.json
  def show
  end
  
  def galeria
    @quadros = Quadro.all.order("vendido ASC")
    @show = Quadro.where(galeria: true, vendido: false).last(4)
  end
  
  # GET /quadros/new
  def new
    @quadro = Quadro.new
    @locais = Local.all
  end

  # GET /quadros/1/edit
  def edit
    @locais = Local.all
  end

  # POST /quadros
  # POST /quadros.json
  def create
    @quadro = Quadro.new(quadro_params)

    respond_to do |format|
      if @quadro.save
        format.html { redirect_to @quadro, notice: 'Quadro was successfully created.' }
        format.json { render :show, status: :created, location: @quadro }
      else
        format.html { render :new }
        format.json { render json: @quadro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quadros/1
  # PATCH/PUT /quadros/1.json
  def update
    respond_to do |format|
      if @quadro.update(quadro_params)
        format.html { redirect_to @quadro, notice: 'Quadro was successfully updated.' }
        format.json { render :show, status: :ok, location: @quadro }
      else
        format.html { render :edit }
        format.json { render json: @quadro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quadros/1
  # DELETE /quadros/1.json
  def destroy
    @quadro.destroy
    respond_to do |format|
      format.html { redirect_to quadros_url, notice: 'Quadro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quadro
      @quadro = Quadro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quadro_params
      params.require(:quadro).permit(:num, :alt, :larg, :tec, :price, :ano, :local_id, :galeria, :vendido, :link, :foto, local_attributes: [:id, :name, :city, :desc])
    end
end
