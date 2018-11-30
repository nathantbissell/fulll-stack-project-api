class ShoesController < OpenReadController
  before_action :set_shoe, only: [:update, :destroy]

  # GET /shoes
  def index
    @shoes = Shoe.all

    render json: @shoes
  end

  # GET /shoes/1
  def show
    render json: Shoe.find(params[:id])
  end

  # POST /shoes
  def create
    #current_user
    #shoe_params
    # @shoe = Shoe.new(shoe_params)
    binding.pry
    @shoe = current_user.shoes.build(shoe_params)
    binding.pry
    if @shoe.save
      render json: @shoe, status: :created, location: @shoe
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shoes/1
  def update
    if @shoe.update(shoe_params)
      render json: @shoe
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shoes/1
  def destroy
    @shoe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoe
      # @shoe = Shoe.find(params[:id])
      @shoe = current_user.shoes.find(params[:id])
      # use current_user variable???
      # current user as opposed to anyone else by find method
    end

    # Only allow a trusted parameter "white list" through.
    def shoe_params
      params.require(:shoe).permit(:brand, :model, :size, :color)
    end
end
