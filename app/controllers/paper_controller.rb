class PaperController < ApplicationController

  def index
    @paper = Paper.all
  end

  def show
    @paper = resource
    unless @paper
      redirect_to root_path
    end
  end

  def new
    @paper = Paper.new
  end

  def edit
    binding.pry
    @paper = resource
  end

  def create
    @paper = Paper.new(paper_params)
    if @paper.save
      flash[:success] = "Created!"
      redirect_to paper_index_path
   else
      flash[:danger] = "Incorrect!"
      render "new"
    end
  end

  def update
    binding.pry
    @paper = resource
    if @paper.update(paper_params)
      flash[:success] = "Updated!"
      redirect_to paper_index_path
    else
      flash[:danger] = "Incorrect!!"
      render "edit"
    end
  end

  def destroy
    @paper = resource
    @paper.destroy
    flash[:success] = "Deleted!"
    redirect_to paper_index_path
  end

  private

  def paper_params
    params.require(:paper).permit(:title, :content)
  end

  def resource
    Paper.find(params[:id])
  end
end
