def get_all_words(file_name, level)
  lines = File.readlines(file_name)
  lines = lines.map! do |words|
    words.chomp
  end
  difficulty(lines,level)
end

def difficulty(file_lines, level)
  mini_list = []
  file_lines.each do |words|
    if level == "easy"
      mini_list << words if get_easy_words(words)
    elsif level == "normal"
      mini_list << words if get_normal_words(words)
    elsif level == "hard"
      mini_list << words if get_hard_words(words)
    else
      puts "Invalid input. Please follow the directions."
      main
    end
  end
  return mini_list
end

def get_easy_words(lines)
lines.length >= 4 && lines.length <= 6
end

def get_normal_words(lines)
lines.length >= 6 && lines.length <= 8
end

def get_hard_words(lines)
  lines.length >= 8 && lines.length <= 24
end


#def select_word_at_random
  #
# end
#
# def # display word with blanks/letters filled in
#
# end
#
# def # check if word has been guessed
#
# end
#
# def won_game()
#   mystery.each do |letter|
#     return false if ! correct_guesses.include?(letter)
#   end
#   end
#   return true
# end


def main()
  puts "Lets play a game of Hangman!"
  print "Choose a difficulty level by typing \'easy\', \'normal\', or \'hard\': "
  level = gets.chomp.downcase
  lines = get_all_words("/usr/share/dict/words", level)
  #mini_list  needs to be used down here
end

main
