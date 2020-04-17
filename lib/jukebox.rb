# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs) 
  puts "Please enter a song name or number:"
  user_input = gets.strip.to_i - 1 
  puts "Playing #{songs[user_input]}"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run 
  puts "Please enter a comman:"
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
        exit_jukebox
    end
  end
  
end


list(songs)

play(songs)