class SupportedProjectsJoinsController < ApplicationController
  before_action :set_supported_projects_join, only: [:show, :edit, :update, :destroy]

  # GET /supported_projects_joins
  # GET /supported_projects_joins.json
  def index
    @supported_projects_joins = SupportedProjectsJoin.all
  end

  # GET /supported_projects_joins/1
  # GET /supported_projects_joins/1.json
  def show
  end

  # GET /supported_projects_joins/new
  def new
    @supported_projects_join = SupportedProjectsJoin.new
  end

  # GET /supported_projects_joins/1/edit
  def edit
  end

  # POST /supported_projects_joins
  # POST /supported_projects_joins.json
  def create
    @supported_projects_join = SupportedProjectsJoin.new(supported_projects_join_params)

    respond_to do |format|
      if @supported_projects_join.save
        format.html { redirect_to @supported_projects_join, notice: 'Supported projects join was successfully created.' }
        format.json { render :show, status: :created, location: @supported_projects_join }
      else
        format.html { render :new }
        format.json { render json: @supported_projects_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supported_projects_joins/1
  # PATCH/PUT /supported_projects_joins/1.json
  def update
    respond_to do |format|
      if @supported_projects_join.update(supported_projects_join_params)
        format.html { redirect_to @supported_projects_join, notice: 'Supported projects join was successfully updated.' }
        format.json { render :show, status: :ok, location: @supported_projects_join }
      else
        format.html { render :edit }
        format.json { render json: @supported_projects_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supported_projects_joins/1
  # DELETE /supported_projects_joins/1.json
  def destroy
    @supported_projects_join.destroy
    respond_to do |format|
      format.html { redirect_to supported_projects_joins_url, notice: 'Supported projects join was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supported_projects_join
      @supported_projects_join = SupportedProjectsJoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supported_projects_join_params
      params.require(:supported_projects_join).permit(:user_id, :project_id, :amount)
    end
end
