class TwitsController < ApplicationController

  def new
    @twit = Twit.new
  end

  def create
    @twit = Twit.new params.require(:body).permit(:body)
    if @twit.save
      redirect_to root_path
    else
      render :new
    end
  end

end
