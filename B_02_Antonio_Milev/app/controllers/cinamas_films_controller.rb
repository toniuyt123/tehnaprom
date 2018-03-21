class CinamasFilmsController < ApplicationController
  before_action :set_cinamas_film, only: [:show, :edit, :update, :destroy]

  # GET /cinamas_films
  # GET /cinamas_films.json
  def index
    @cinamas_films = CinamasFilm.all
  end

  # GET /cinamas_films/1
  # GET /cinamas_films/1.json
  def show
  end

  # GET /cinamas_films/new
  def new
    @cinamas_film = CinamasFilm.new
  end

  # GET /cinamas_films/1/edit
  def edit
  end

  # POST /cinamas_films
  # POST /cinamas_films.json
  def create
    @cinamas_film = CinamasFilm.new(cinamas_film_params)

    respond_to do |format|
      if @cinamas_film.save
        format.html { redirect_to @cinamas_film, notice: 'Cinamas film was successfully created.' }
        format.json { render :show, status: :created, location: @cinamas_film }
      else
        format.html { render :new }
        format.json { render json: @cinamas_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinamas_films/1
  # PATCH/PUT /cinamas_films/1.json
  def update
    respond_to do |format|
      if @cinamas_film.update(cinamas_film_params)
        format.html { redirect_to @cinamas_film, notice: 'Cinamas film was successfully updated.' }
        format.json { render :show, status: :ok, location: @cinamas_film }
      else
        format.html { render :edit }
        format.json { render json: @cinamas_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinamas_films/1
  # DELETE /cinamas_films/1.json
  def destroy
    @cinamas_film.destroy
    respond_to do |format|
      format.html { redirect_to cinamas_films_url, notice: 'Cinamas film was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinamas_film
      @cinamas_film = CinamasFilm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cinamas_film_params
      params.require(:cinamas_film).permit(:cinema_id, :film_id)
    end
end
