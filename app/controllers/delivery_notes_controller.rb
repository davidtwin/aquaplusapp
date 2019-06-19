class DeliveryNotesController < ApplicationController
  before_action :set_delivery_note, only: [:show, :update, :destroy]

  # GET /delivery_notes
  def index
    @delivery_notes = DeliveryNote.all

    render json: @delivery_notes
  end

  # GET /delivery_notes/1
  def show
    render json: @delivery_note
  end

  # POST /delivery_notes
  def create
    @delivery_note = DeliveryNote.new(delivery_note_params)

    if @delivery_note.save
      render json: @delivery_note, status: :created, location: @delivery_note
    else
      render json: @delivery_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /delivery_notes/1
  def update
    if @delivery_note.update(delivery_note_params)
      render json: @delivery_note
    else
      render json: @delivery_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /delivery_notes/1
  def destroy
    @delivery_note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_note
      @delivery_note = DeliveryNote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def delivery_note_params
      params.require(:delivery_note).permit(:water_id, :customer_id, :delivery_number, :item, :quantity, :purchase_order, :date_ordered, :date_due, :date_delivered, :time_delivered, :notes, :driver, :signature_strip, :payment)
    end
end
