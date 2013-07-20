module SpellcheckHelper
  def spellcheck word
    speller = FFI::Aspell::Speller.new 'en_US'
    is_correct = speller.correct?(word)
    msg = (is_correct ? "The word #{word} is correct" : "The word #{word} is incorrect")

    response = { is_correct: is_correct,
                 suggestions: speller.suggestions(word)[0..5],
                 msg: msg }
  end
end
