class SpeechesController < ApplicationController
    before_action :set_speech, only: [:show, :destroy]

  def index
    @user_speeches = current_user.speeches
    @user_speech_submitted = current_user.speeches.where(reviewed: false)
    @user_speech_done = current_user.speeches.where(reviewed: true)
    @reviews_received = []
    @user_speeches.each {|speech| @reviews_received << speech.reviews}
    @reviews_received.empty? ? @reviews_received = [] : @reviews_received = @reviews_received[1]
  end

  def show
  end

  def new
    @speech = Speech.new
  end

  def create
    @speech = Speech.new(params_speech)
    @speech.user = current_user
    if @speech.save && Speech.where(reviewed: false).where( "user_id != #{current_user.id}").order(:created_at).limit(3).count != 0
      redirect_to reviews_path
    elsif @speech.save
      redirect_to speeches_path
    else
      render 'new'
    end
  end

  def update
    @speech = Speech.find(params[:id])
    params[:reviewed].nil? ? @speech.update(params_speech) : @speech.update(reviewed: params[:reviewed])
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
    params.require(:speech).permit(:title, :description, :length_max, :url, :reviewed)
  end
end
