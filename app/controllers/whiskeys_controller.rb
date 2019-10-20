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
    render json: @whiskey
  end

  # POST /whiskeys
  def create
    # @whiskey = Whiskey.new(whiskey_params)
    @whiskey = current_user.examples.build(whiskey_params)

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
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_whiskey
    @whiskey = current_user.examples.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def whiskey_params
    params.require(:whiskey).permit(:name, :type, :region, :age, :taste, :price, :user_id)
  end

  private :set_example, :example_params
end
