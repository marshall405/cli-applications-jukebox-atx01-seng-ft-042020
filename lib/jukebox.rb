# Add your code here

# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs) 
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if user_input.to_i > 0 
    user_input = user_input.to_i - 1
    puts songs[user_input] ? "Playing #{songs[user_input]}" : "Invalid input, please try again"
  else
    puts songs.include?(user_input) ? "Playing #{user_input}" : "Invalid input, please try again"
  end
  
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  puts "Please enter a command:"
  user_input = gets.strip
  
  while user_input != 'exit' do
    case user_input
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
      else 
        puts "'#{user_input}' is not a valid command."
    end
    puts "Please enter a command:"
    user_input = gets.strip
  end
  exit_jukebox
end