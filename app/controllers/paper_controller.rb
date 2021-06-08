class PaperController < ApplicationController

  def index
    @paper = Paper.all
  end

  def show
    @Paper = resource
    unless @Paper
      redirect_to root_path
    end
    #@paper = Paper.find(params[:id])
  end

  def new
    @Paper = Paper.new
  end

  def edit
    @Paper = resourceя
  end

  def create
    @Paper = Paper.new(paper_params)
    if @paper.save
      flash[:success] = "Created!"
      redirect_to paper_index_path
    else
      flash[:danger] = "Incorrect!"
      render "new"
    end
    #@paper = Paper.new(paper_params)
    #@paper.save
    #redirect_to @paper
  end

  def update
    @Paper = resource
    if @paper.update(paper_params)
      flash[:success] = "Updated!"
      redirect_to paper_index_path
    else
      flash[:danger] = "Incorrect!!"
      render "edit"
    end
    #@paper = Paper.find(params[:id])
    #@paper.update(paper_params)
    #redirect_to @paper
  end

  def destroy
    @Paper = resource
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
