class NeightborhoodsController < ApplicationController
  before_action :set_neightborhood, only: [:show, :edit, :update, :destroy]

  # GET /neightborhoods
  # GET /neightborhoods.json
  def index
    @neightborhoods = Neightborhood.all
  end

  # GET /neightborhoods/1
  # GET /neightborhoods/1.json
  def show
  end

  # GET /neightborhoods/new
  def new
    @neightborhood = Neightborhood.new
  end

  # GET /neightborhoods/1/edit
  def edit
  end

  # POST /neightborhoods
  # POST /neightborhoods.json
  def create
    @neightborhood = Neightborhood.new(neightborhood_params)

    respond_to do |format|
      if @neightborhood.save
        format.html { redirect_to @neightborhood, notice: 'Neightborhood was successfully created.' }
        format.json { render :show, status: :created, location: @neightborhood }
      else
        format.html { render :new }
        format.json { render json: @neightborhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neightborhoods/1
  # PATCH/PUT /neightborhoods/1.json
  def update
    respond_to do |format|
      if @neightborhood.update(neightborhood_params)
        format.html { redirect_to @neightborhood, notice: 'Neightborhood was successfully updated.' }
        format.json { render :show, status: :ok, location: @neightborhood }
      else
        format.html { render :edit }
        format.json { render json: @neightborhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neightborhoods/1
  # DELETE /neightborhoods/1.json
  def destroy
    @neightborhood.destroy
    respond_to do |format|
      format.html { redirect_to neightborhoods_url, notice: 'Neightborhood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neightborhood
      @neightborhood = Neightborhood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neightborhood_params
      params.require(:neightborhood).permit(:name, :city_id)
    end
end
