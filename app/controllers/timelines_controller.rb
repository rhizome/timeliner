class TimelinesController < ApplicationController
  respond_to :html, :json

  include ActiveModel::ForbiddenAttributesProtection
  before_filter :set_timeline, only: [:show, :edit, :update, :destroy]

  # GET /timelines
  def index
    @timelines = Timeline.all
  end

  # GET /timelines/1
  def show
    respond_with @timeline, include: :events
  end

  # GET /timelines/new
  def new
    @timeline = Timeline.new
  end

  # GET /timelines/1/edit
  def edit
  end

  # POST /timelines
  def create
    @timeline = Timeline.new(timeline_params)

    if @timeline.save
      redirect_to @timeline, notice: 'Timeline was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /timelines/1
  def update
    if @timeline.update(timeline_params)
      redirect_to @timeline, notice: 'Timeline was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /timelines/1
  def destroy
    @timeline.destroy
    redirect_to timelines_url, notice: 'Timeline was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeline
      @timeline = Timeline.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def timeline_params
      params.require(:timeline).permit(:name)
    end
end
