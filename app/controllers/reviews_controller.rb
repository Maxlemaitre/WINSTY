class ReviewsController < ApplicationController
  before_action :set_speech, only: :create

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(user: current_user, speech: @speech, content: params[:review][:content])
    @review.filter
    redirect_to speech_path(@speech)
  end

  private

  def set_speech
    @speech = Speech.find(params[:speech_id])
  end
end
