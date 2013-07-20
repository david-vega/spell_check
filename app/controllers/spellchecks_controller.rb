class SpellchecksController < ApplicationController
  include SpellcheckHelper

  def index
    @spellcheck = spellcheck params[:word] if params[:word]
  end

end
