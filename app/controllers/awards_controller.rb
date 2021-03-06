class AwardsController < ApplicationController
  before_action :set_award, only: [:show]

  def index
    @awards = Award.all
    @award = Award.new()
  end

  def show
  end

  def create
    @award = Award.new(award_params)
    @award.save
    redirect_to awards_path
  end


  private
    def award_params
      params.require(:award).permit(:title)
    end

    def set_award
      @award = Award.find(params[:id])
    end
end
