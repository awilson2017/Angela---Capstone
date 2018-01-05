class CardsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.save

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def card_params
    params.permit(:deck_id, :front, :back, :image)
  end
end
