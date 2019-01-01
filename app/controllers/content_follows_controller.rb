class ContentFollowsController < ApplicationController
  before_action :set_content_follow, only: [:show, :edit, :update, :destroy]

  # GET /content_follows
  # GET /content_follows.json
  def index
    @content_follows = ContentFollow.all
  end

  # GET /content_follows/1
  # GET /content_follows/1.json
  def show
  end

  # GET /content_follows/new
  def new
    @content_follow = ContentFollow.new
  end

  # GET /content_follows/1/edit
  def edit
  end

  # POST /content_follows
  # POST /content_follows.json
  def create
    @content_follow = ContentFollow.new(content_follow_params)

    respond_to do |format|
      if @content_follow.save
        format.html { redirect_to @content_follow, notice: 'Content follow was successfully created.' }
        format.json { render :show, status: :created, location: @content_follow }
      else
        format.html { render :new }
        format.json { render json: @content_follow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content_follows/1
  # PATCH/PUT /content_follows/1.json
  def update
    respond_to do |format|
      if @content_follow.update(content_follow_params)
        format.html { redirect_to @content_follow, notice: 'Content follow was successfully updated.' }
        format.json { render :show, status: :ok, location: @content_follow }
      else
        format.html { render :edit }
        format.json { render json: @content_follow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_follows/1
  # DELETE /content_follows/1.json
  def destroy
    @content_follow.destroy
    respond_to do |format|
      format.html { redirect_to content_follows_url, notice: 'Content follow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_follow
      @content_follow = ContentFollow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_follow_params
      params.require(:content_follow).permit(:article_id, :user_id)
    end
end
