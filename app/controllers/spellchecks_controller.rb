class SpellchecksController < ApplicationController
  include SpellcheckHelper

  def index
    @correct = spellcheck 'cokie'
  end

end
