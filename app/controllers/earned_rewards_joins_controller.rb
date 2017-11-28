class EarnedRewardsJoinsController < ApplicationController
  before_action :set_earned_rewards_join, only: [:show, :edit, :update, :destroy]

  # GET /earned_rewards_joins
  # GET /earned_rewards_joins.json
  def index
    @earned_rewards_joins = EarnedRewardsJoin.all
  end

  # GET /earned_rewards_joins/1
  # GET /earned_rewards_joins/1.json
  def show
  end

  # GET /earned_rewards_joins/new
  def new
    @earned_rewards_join = EarnedRewardsJoin.new
  end

  # GET /earned_rewards_joins/1/edit
  def edit
  end

  # POST /earned_rewards_joins
  # POST /earned_rewards_joins.json
  def create
    @earned_rewards_join = EarnedRewardsJoin.new(earned_rewards_join_params)

    respond_to do |format|
      if @earned_rewards_join.save
        format.html { redirect_to @earned_rewards_join, notice: 'Earned rewards join was successfully created.' }
        format.json { render :show, status: :created, location: @earned_rewards_join }
      else
        format.html { render :new }
        format.json { render json: @earned_rewards_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /earned_rewards_joins/1
  # PATCH/PUT /earned_rewards_joins/1.json
  def update
    respond_to do |format|
      if @earned_rewards_join.update(earned_rewards_join_params)
        format.html { redirect_to @earned_rewards_join, notice: 'Earned rewards join was successfully updated.' }
        format.json { render :show, status: :ok, location: @earned_rewards_join }
      else
        format.html { render :edit }
        format.json { render json: @earned_rewards_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earned_rewards_joins/1
  # DELETE /earned_rewards_joins/1.json
  def destroy
    @earned_rewards_join.destroy
    respond_to do |format|
      format.html { redirect_to earned_rewards_joins_url, notice: 'Earned rewards join was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_earned_rewards_join
      @earned_rewards_join = EarnedRewardsJoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def earned_rewards_join_params
      params.require(:earned_rewards_join).permit(:user_id, :reward_id)
    end
end
