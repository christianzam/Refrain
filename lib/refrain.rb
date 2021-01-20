def refrain(lyrics, number_of_times = 1, vibrato = 0, strong = false)
  song_refrain = []
  lyrics += lyrics[lyrics.size - 1] * vibrato # param LYRICS var and its size depends on the VIBRATO param given
  lyrics.upcase! if strong # now LYRICS is all in capital letters
  number_of_times.times do
    song_refrain << lyrics # LYRICS value is now in SONG REFRAIN array
  end
  song_refrain.join(" ") # now everything in the array will be made a string with and space in between
end

# HERE I've implement this better version which breaks argument order dependency

def better_refrain(lyrics, options = { vibrato: 0, number_of_times: 1, strong: false })
  song_refrain = []
  lyrics += lyrics[lyrics.size - 1] * options[:vibrato]
  lyrics.upcase! if options[:strong]

  options[:number_of_times].times do
    song_refrain << lyrics
  end
  song_refrain.join(" ")
end