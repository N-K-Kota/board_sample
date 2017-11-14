class RemarksController < ApplicationController
  def index
    @remark=Remark.new
    @remarks=Remark.paginate(page:params[:page],per_page:10)
  end
  def create
    @remark=Remark.new(remark_create)
    if @remark.name==""
      @remark.name="痴漢BBS"
    end
    @remark.posted_at=Time.zone.now
    if @remark.save
      redirect_to :action=>'index'
    else
    end
  end
  def remark_create
    params.require(:remark).permit(:name,:sentence)
  end
end
