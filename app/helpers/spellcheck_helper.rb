module SpellcheckHelper
  def spellcheck word
    speller = FFI::Aspell::Speller.new('en_US')
    if speller.correct?(word)
      "The word #{word} is correct"
    else
      "The word #{word} is incorrect"
    end
  end
end
