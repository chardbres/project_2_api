# frozen_string_literal: true

class WhiskeysController < ProtectedController
  before_action :set_whiskey, only: %i[show update destroy]

  # GET /whiskeys
  def index
    @whiskeys = Whiskey.all

    render json: @whiskeys
  end

  # GET /whiskeys/1
  def show
    render json: Whiskey.find(params[:id])
  end

  # POST /whiskeys
  def create
    @whiskey = current_user.whiskeys.build(whiskey_params)

    if @whiskey.save
      render json: @whiskey, status: :created, location: @whiskey
    else
      render json: @whiskey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /whiskeys/1
  def update
    if @whiskey.update(whiskey_params)
      render json: @whiskey
    else
      render json: @whiskey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /whiskeys/1
  def destroy
    @whiskey.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_whiskey
    @whiskey = current_user.whiskeys.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def whiskey_params
    params.require(:whiskey).permit(:name, :variety, :region, :age, :primary_taste, :price)
  end

  private :set_whiskey, :whiskey_params
end
