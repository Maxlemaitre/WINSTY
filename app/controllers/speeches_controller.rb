class SpeechesController < ApplicationController
    before_action :set_speech, only: [:show, :destroy]

  def index
    @user_speeches = current_user.speeches
    @user_speech_submitted = []
    @reviews_received = []
    @user_speech_done = []
    @user_speeches.each do |speech|
      @user_speech_submitted << speech if speech.reviews.count <= 2
      @user_speech_done << speech if speech.reviews.count >= 3
      @reviews_received << speech.reviews
    end
    @reviews_received = @reviews_received[1]
  end

  def show
  end

  def new
    @speech = Speech.new
  end

  def create
    @speech = Speech.new(params_speech)
    @speech.user = current_user
    if @speech.save
      redirect_to speech_path(@speech)
    else
      render 'new'
    end
  end

  def destroy
    @speech.delete
    redirect_to speeches_path
  end

  private

  def set_speech
    @speech = Speech.find(params[:id])
  end

  def params_speech
    params.require(:speech).permit(:title, :description, :length_max, :url)
  end
end
