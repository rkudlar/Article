class PaperController < ApplicationController

  def index

  end

  def new

  end

  def show
    @paper = Paper.find(params[:id])
  end

  def edit
    @paper = Paper.find(params[:id])
  end

  def update
    @paper = Paper.find(params[:id])

    @paper.update(paper_params)
    redirect_to @paper
  end

  def create
     #render plain: params[:paper].inspect
    @paper = Paper.new(paper_params)

    @paper.save
    redirect_to @paper
  end

  private def paper_params
    params.require(:paper).permit(:title, :content)
  end
end
