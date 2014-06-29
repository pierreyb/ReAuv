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
end
