class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :update, :destroy]

  # GET /challenges
  def index
    @challenges = @current_user.challenges

    authorize @challenges

    render json: @challenges
  end

  # GET /challenges/1
  def show
    authorize @challenge

    render json: @challenge
  end

  # POST /challenges
  def create
    @challenge = Challenge.new(challenge_params)

    @challenge.date = Date.today

    if @challenge.save
      @challenge.users << [@challenge.challenger, @challenge.challenged]

      render json: @challenge, status: :created, location: @challenge
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challenges/1
  def update
    authorize @challenge

    if @challenge.update(challenge_params)
      render json: @challenge
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /challenges/1
  def destroy
    @challenge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def challenge_params
      if @current_user.is_host
        params.require(:challenge).permit(:is_confirmed)
      else
        params.require(:challenge).permit(:challenger_id,
                                          :challenged_id,
                                          :place_id,
                                          :is_accepted,
                                          :game_id)
      end
    end
end
