class BanqueCarrefourEntreprisesController < ApplicationController
  # GET /banque_carrefour_entreprises
  # GET /banque_carrefour_entreprises.json
  def index
    @banque_carrefour_entreprises = BanqueCarrefourEntreprise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @banque_carrefour_entreprises }
    end
  end

  # GET /banque_carrefour_entreprises/1
  # GET /banque_carrefour_entreprises/1.json
  def show
    @banque_carrefour_entreprise = BanqueCarrefourEntreprise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @banque_carrefour_entreprise }
    end
  end

  # GET /banque_carrefour_entreprises/new
  # GET /banque_carrefour_entreprises/new.json
  def new
    @banque_carrefour_entreprise = BanqueCarrefourEntreprise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @banque_carrefour_entreprise }
    end
  end

  # GET /banque_carrefour_entreprises/1/edit
  def edit
    @banque_carrefour_entreprise = BanqueCarrefourEntreprise.find(params[:id])
  end

  # POST /banque_carrefour_entreprises
  # POST /banque_carrefour_entreprises.json
  def create
    @banque_carrefour_entreprise = BanqueCarrefourEntreprise.new(params[:banque_carrefour_entreprise])

    respond_to do |format|
      if @banque_carrefour_entreprise.save
        format.html { redirect_to @banque_carrefour_entreprise, notice: 'Banque carrefour entreprise was successfully created.' }
        format.json { render json: @banque_carrefour_entreprise, status: :created, location: @banque_carrefour_entreprise }
      else
        format.html { render action: "new" }
        format.json { render json: @banque_carrefour_entreprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /banque_carrefour_entreprises/1
  # PUT /banque_carrefour_entreprises/1.json
  def update
    @banque_carrefour_entreprise = BanqueCarrefourEntreprise.find(params[:id])

    respond_to do |format|
      if @banque_carrefour_entreprise.update_attributes(params[:banque_carrefour_entreprise])
        format.html { redirect_to @banque_carrefour_entreprise, notice: 'Banque carrefour entreprise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @banque_carrefour_entreprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banque_carrefour_entreprises/1
  # DELETE /banque_carrefour_entreprises/1.json
  def destroy
    @banque_carrefour_entreprise = BanqueCarrefourEntreprise.find(params[:id])
    @banque_carrefour_entreprise.destroy

    respond_to do |format|
      format.html { redirect_to banque_carrefour_entreprises_url }
      format.json { head :no_content }
    end
  end
end
