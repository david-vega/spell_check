class SpellchecksController < ApplicationController
  include SpellcheckHelper

  def index
    @spellcheck = spellcheck params[:word] if params[:word]
    respond_to do |format|
      format.xml { render :xml => @post.to_xml }
      format.html { }
    end
  end

end
