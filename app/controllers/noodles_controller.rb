class NoodlesController < ApplicationController

  def index
    @noodles = Noodle.all
  end

  def new
    @noodle = Noodle.new
  end

  def create
    @noodle = Noodle.new(params.require(:noodle).permit(:shape, :sauce))
    @noodle.save
    redirect_to noodles_path
  end

  def show
    @noodle = Noodle.find(params[:id])
  end

  def edit
    @noodle = Noodle.find(params[:id])
  end

  def update
    @noodle = Noodle.find(params[:id])
    @noodle.update(params.require(:noodle).permit(:shape, :sauce))
    redirect_to noodles_path
  end

    def destroy
      Noodle.destroy(params[:id])
      redirect_to noodles_path
    end
end
