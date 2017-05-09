class ReviewsController < ApplicationController
  before_action :set_speech, only: :create

  def index
   @reviews = Speech.where(reviewed: false).where( "user_id != #{current_user.id}").order(:created_at).limit(3)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(user: current_user, speech: @speech, content: params[:review][:content])
    redirect_to speeches_path
  end

  private

  def set_speech
    @speech = Speech.find(params[:speech_id])
  end
end
