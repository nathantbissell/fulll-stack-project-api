# frozen_string_literal: true

class ExamplesController < OpenReadController
  # open read controller allows you to use a CRUD resource with a token
  before_action :set_example, only: %i[update destroy]

  # GET /examples
  # GET /examples.json
  def index
    @examples = Example.all
# if we wanted to limit to current_user's examples
# inherit from ProtectedController
# current_user.examples
    render json: @examples
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
    render json: Example.find(params[:id])
  end

  # POST /examples
  # POST /examples.json
  def create
    @example = current_user.examples.build(example_params)
# TOKEN looks up current_user
# use current_user to build our resource
# .build is the same as .new
    if @example.save
      render json: @example, status: :created
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    if @example.update(example_params)
      render json: @example
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @example.destroy
# since (at)example works off current_user, we are only able to destroy examples that the current user has created
    head :no_content
  end

  def set_example
    @example = current_user.examples.find(params[:id])
    # if you pass in a token, you get access to the current_user
  end

  def example_params
    params.require(:example).permit(:text)
  end

  private :set_example, :example_params
end
