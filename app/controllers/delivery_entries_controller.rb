class DeliveryEntriesController < ApplicationController
  before_action :set_delivery_entry, only: [:show, :edit, :update, :destroy]

  # GET /delivery_entries
  # GET /delivery_entries.json
  def index
    @delivery_entries = DeliveryEntry.all
  end

  # GET /delivery_entries/1
  # GET /delivery_entries/1.json
  def show
  end

  # GET /delivery_entries/new
  def new
    @delivery_entry = DeliveryEntry.new
  end

  # GET /delivery_entries/1/edit
  def edit
  end

  # POST /delivery_entries
  # POST /delivery_entries.json
  def create
    @delivery_entry = DeliveryEntry.new(delivery_entry_params)

    respond_to do |format|
      if @delivery_entry.save
        format.html { redirect_to @delivery_entry, notice: 'Delivery entry was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_entry }
      else
        format.html { render :new }
        format.json { render json: @delivery_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_entries/1
  # PATCH/PUT /delivery_entries/1.json
  def update
    respond_to do |format|
      if @delivery_entry.update(delivery_entry_params)
        format.html { redirect_to @delivery_entry, notice: 'Delivery entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_entry }
      else
        format.html { render :edit }
        format.json { render json: @delivery_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_entries/1
  # DELETE /delivery_entries/1.json
  def destroy
    @delivery_entry.destroy
    respond_to do |format|
      format.html { redirect_to delivery_entries_url, notice: 'Delivery entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_entry
      @delivery_entry = DeliveryEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_entry_params
      params.require(:delivery_entry).permit(:date, :in, :out, :company, :plate_vehicle, :plate_trailer, :plate_state, :initials, :pass_num)
    end
end
