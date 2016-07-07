class CardsController < ApplicationController
  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.create(params.require(:card).permit(:front, :back))
    flash[:notice] = 'Card criado com sucesso'
    redirect_to @card
  end

end
