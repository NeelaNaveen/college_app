class RegistrationRoomsController < ApplicationController
  before_action :set_registration_room, only: [:show, :edit, :update, :destroy]

  # GET /registration_rooms
  # GET /registration_rooms.json
  def index
    @registration_rooms = RegistrationRoom.all
  end

  # GET /registration_rooms/1
  # GET /registration_rooms/1.json
  def show
  end

  # GET /registration_rooms/new
  def new
    @registration_room = RegistrationRoom.new
  end

  # GET /registration_rooms/1/edit
  def edit
  end

  # POST /registration_rooms
  # POST /registration_rooms.json
  def create
    @registration_room = RegistrationRoom.new(registration_room_params)

    respond_to do |format|
      if @registration_room.save
        format.html { redirect_to @registration_room, notice: 'Registration room was successfully created.' }
        format.json { render :show, status: :created, location: @registration_room }
      else
        format.html { render :new }
        format.json { render json: @registration_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_rooms/1
  # PATCH/PUT /registration_rooms/1.json
  def update
    respond_to do |format|
      if @registration_room.update(registration_room_params)
        format.html { redirect_to @registration_room, notice: 'Registration room was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_room }
      else
        format.html { render :edit }
        format.json { render json: @registration_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_rooms/1
  # DELETE /registration_rooms/1.json
  def destroy
    @registration_room.destroy
    respond_to do |format|
      format.html { redirect_to registration_rooms_url, notice: 'Registration room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_room
      @registration_room = RegistrationRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_room_params
      params.require(:registration_room).permit(:students_id, :courses_id, :semester)
    end
end
