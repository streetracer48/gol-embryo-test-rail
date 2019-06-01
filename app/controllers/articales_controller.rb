class ArticalesController < ApplicationController
  before_action :set_articale, only: [:show, :edit, :update, :destroy]

  # GET /articales
  # GET /articales.json
  def index
    @articales = Articale.all
  end

  # GET /articales/1
  # GET /articales/1.json
  def show
  end

  # GET /articales/new
  def new
    @articale = Articale.new
  end

  # GET /articales/1/edit
  def edit
  end

  # POST /articales
  # POST /articales.json
  def create
    @articale = Articale.new(articale_params)

    respond_to do |format|
      if @articale.save
        format.html { redirect_to @articale, notice: 'Articale was successfully created.' }
        format.json { render :show, status: :created, location: @articale }
      else
        format.html { render :new }
        format.json { render json: @articale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articales/1
  # PATCH/PUT /articales/1.json
  def update
    respond_to do |format|
      if @articale.update(articale_params)
        format.html { redirect_to @articale, notice: 'Articale was successfully updated.' }
        format.json { render :show, status: :ok, location: @articale }
      else
        format.html { render :edit }
        format.json { render json: @articale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articales/1
  # DELETE /articales/1.json
  def destroy
    @articale.destroy
    respond_to do |format|
      format.html { redirect_to articales_url, notice: 'Articale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articale
      @articale = Articale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articale_params
      params.require(:articale).permit(:title, :despcription)
    end
end
