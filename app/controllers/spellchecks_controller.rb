class SpellchecksController < ApplicationController
  include SpellcheckHelper

  def index
    @spellcheck = spellcheck 'cokie'
  end

end
