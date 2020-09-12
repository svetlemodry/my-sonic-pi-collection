# Coded by Jaroslav Lichtblau

# same song, different ways of typing it down

#TAKE 1
counter1 = 0
live_loop :kld do
  use_synth :piano
  4.times do
    play [:c4, :d4, :e4, :f4].tick(:a)
    sleep 0.25
  end
  2.times do
    play [:g4, :g4].tick(:b)
    sleep 0.5
  end
  6.times do
    play [:a4, :a4, :g4].tick(:c)
    sleep [0.5, 0.5, 1].tick(:d)
  end
  2.times do
    4.times do
      play :f4
      sleep 0.25
    end
    2.times do
      play [:e4].tick(:e)
      sleep 0.5
    end
    2.times do
      play [:d4].tick(:f)
      sleep 0.5
    end
    play (ring :g4, :c4)[counter1]
    counter1 += 1
    sleep 1
  end
  stop
end


#TAKE 2 - less lines
counter2 = 0
live_loop :kld_shorter do
  use_synth :piano
  4.times {play [:c4, :d4, :e4, :f4].tick(:a); sleep 0.25}
  2.times {play [:g4, :g4].tick(:b); sleep 0.5}
  6.times {play [:a4, :a4, :g4].tick(:c); sleep [0.5, 0.5, 1].tick(:d)}
  2.times do
    4.times {play :f4; sleep 0.25}
    2.times {play [:e4].tick(:e); sleep 0.5}
    2.times {play [:d4].tick(:f); sleep 0.5}
    play (ring :g4, :c4)[counter2]
    counter2 += 1
    sleep 1
  end
  stop
end


#TAKE 3 - less lines with play_pattern_timed
counter3 = 0
live_loop :kld_pattern_timed do
  use_synth :piano
  play_pattern_timed [:c4, :d4, :e4, :f4], [0.25, 0.25, 0.25, 0.25]
  play_pattern_timed [:g4, :g4], [0.5, 0.5]
  2.times {play_pattern_timed [:a4, :a4, :g4], [0.5, 0.5, 1], release: 0.1}
  2.times do
    4.times {play_pattern_timed [:f4], [0.25]}
    2.times {play_pattern_timed [:e4], [0.5]}
    2.times {play_pattern_timed [:d4], [0.5]}
    play (ring :g4, :c4)[counter3]
    counter3 += 1
    sleep 1
  end
  stop
end
