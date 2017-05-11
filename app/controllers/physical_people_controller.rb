class PhysicalPeopleController < ApplicationController
  before_action :set_physical_person, only: [:show, :edit, :update, :destroy]

  # GET /physical_people
  # GET /physical_people.json
  def index
    @physical_people = PhysicalPerson.all
  end

  # GET /physical_people/1
  # GET /physical_people/1.json
  def show
  end

  # GET /physical_people/new
  def new
    @physical_person = PhysicalPerson.new
  end

  # GET /physical_people/1/edit
  def edit
  end

  # POST /physical_people
  # POST /physical_people.json
  def create
    @physical_person = PhysicalPerson.new(physical_person_params)

    respond_to do |format|
      if @physical_person.save
        format.html { redirect_to @physical_person, notice: 'Physical person was successfully created.' }
        format.json { render :show, status: :created, location: @physical_person }
      else
        format.html { render :new }
        format.json { render json: @physical_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_people/1
  # PATCH/PUT /physical_people/1.json
  def update
    respond_to do |format|
      if @physical_person.update(physical_person_params)
        format.html { redirect_to @physical_person, notice: 'Physical person was successfully updated.' }
        format.json { render :show, status: :ok, location: @physical_person }
      else
        format.html { render :edit }
        format.json { render json: @physical_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_people/1
  # DELETE /physical_people/1.json
  def destroy
    @physical_person.destroy
    respond_to do |format|
      format.html { redirect_to physical_people_url, notice: 'Physical person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_person
      @physical_person = PhysicalPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_person_params
      params.require(:physical_person).permit(:cnpj, :nome_fantasia, :person_id)
    end
end
