class ProjectTypeJoinsController < ApplicationController
  before_action :set_project_type_join, only: [:show, :edit, :update, :destroy]

  # GET /project_type_joins
  # GET /project_type_joins.json
  def index
    @project_type_joins = ProjectTypeJoin.all
  end

  # GET /project_type_joins/1
  # GET /project_type_joins/1.json
  def show
  end

  # GET /project_type_joins/new
  def new
    @project_type_join = ProjectTypeJoin.new
  end

  # GET /project_type_joins/1/edit
  def edit
  end

  # POST /project_type_joins
  # POST /project_type_joins.json
  def create
    @project_type_join = ProjectTypeJoin.new(project_type_join_params)

    respond_to do |format|
      if @project_type_join.save
        format.html { redirect_to @project_type_join, notice: 'Project type join was successfully created.' }
        format.json { render :show, status: :created, location: @project_type_join }
      else
        format.html { render :new }
        format.json { render json: @project_type_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_type_joins/1
  # PATCH/PUT /project_type_joins/1.json
  def update
    respond_to do |format|
      if @project_type_join.update(project_type_join_params)
        format.html { redirect_to @project_type_join, notice: 'Project type join was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_type_join }
      else
        format.html { render :edit }
        format.json { render json: @project_type_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_type_joins/1
  # DELETE /project_type_joins/1.json
  def destroy
    @project_type_join.destroy
    respond_to do |format|
      format.html { redirect_to project_type_joins_url, notice: 'Project type join was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_type_join
      @project_type_join = ProjectTypeJoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_type_join_params
      params.require(:project_type_join).permit(:project_id, :project_type_id)
    end
end
