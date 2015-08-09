class RubricsController < ApplicationController
  before_action :set_rubric, only: [:show, :edit, :update, :destroy]

  # GET /rubrics
  # GET /rubrics.json
  def index
    @rubrics = Rubric.all
  end
  
  def my_index
    @rubrics = current_user.rubrics
  end

  # GET /rubrics/1
  # GET /rubrics/1.json
  def show
    @objectives = @rubric.objectives
  end

  # GET /rubrics/new
  def new
    @rubric = Rubric.new
    @courses = current_user.courses
  end
  
  def add_rubric
    @rubric = Rubric.find(params["id"])
    current_user.rubrics << @rubric
    redirect_to my_rubrics_path, notice: "Rubric was successfully added."
  end
  
  def remove_course
    @rubric = Rubric.find(params["id"])
    current_user.rubrics.delete(@rubric)
    redirect_to my_rubrics_path, notice: "Rubric was successfully removed"
  end

  # GET /rubrics/1/edit
  def edit
  end

  # POST /rubrics
  # POST /rubrics.json
  def create
    @rubric = Rubric.new(params.require(:rubric).permit(:name))

    respond_to do |format|
      if @rubric.save
        current_user.rubrics << @rubric
        if params["rubric"]["course_id1"] != ""
          @course = Course.find(params["rubric"]["course_id1"])
          @course.rubrics << @rubric
        end
        if params["rubric"]["course_id2"] != ""
          @course = Course.find(params["rubric"]["course_id2"])
          @course.rubrics << @rubric
        end
        if params["rubric"]["course_id3"] != ""
          @course = Course.find(params["rubric"]["course_id3"])
          @course.rubrics << @rubric
        end
        format.html { redirect_to my_rubrics_path, notice: 'Rubric was successfully created.' }
        format.json { render :show, status: :created, location: @rubric }
      else
        format.html { render :new }
        format.json { render json: @rubric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubrics/1
  # PATCH/PUT /rubrics/1.json
  def update
    respond_to do |format|
      if @rubric.update(rubric_params)
        if params["rubric"]["course_id1"] != ""
          @course = Course.find(params["rubric"]["course_id1"])
          @course.rubrics << @rubric
        end
        if params["rubric"]["course_id2"] != ""
          @course = Course.find(params["rubric"]["course_id2"])
          @course.rubrics << @rubric
        end
        if params["rubric"]["course_id3"] != ""
          @course = Course.find(params["rubric"]["course_id3"])
          @course.rubrics << @rubric
        end
        format.html { redirect_to my_rubrics_path, notice: 'Rubric was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubric }
      else
        format.html { render :edit }
        format.json { render json: @rubric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubrics/1
  # DELETE /rubrics/1.json
  def destroy
    @rubric.destroy
    respond_to do |format|
      format.html { redirect_to rubrics_url, notice: 'Rubric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubric
      @rubric = Rubric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubric_params
      params.require(:rubric).permit(:name, :course_id1, :course_id2, :course_id3)
    end
end
