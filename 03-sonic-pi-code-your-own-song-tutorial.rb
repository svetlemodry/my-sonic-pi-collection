# Coded by Jaroslav Lichtblau

##| Sonic-pi tutorial from `Geek Tutorials`:
##| https://www.youtube.com/watch?v=qr9bK3bux8M

g = :minor

in_thread do
  use_synth :piano
  
  3.times do
    3.times do
      play chord( :D5, g)
      sleep [0.25, 0.5, 0.25].tick(:a)
    end
    
    2.times do
      play chord( :A, g)
      sleep 0.5
    end
    
    2.times do
      play chord( :G, g)
      sleep 0.5
    end
    
    play chord( :A, g)
    sleep 1
  end
  
  8.times do
    play chord( :G, g)
    sleep 0.25
  end
  
  8.times do
    play chord( :A, g)
    sleep 0.25
  end
  
  play chord(:D5, g)
end

in_thread do
  use_synth :sine
  
  3.times do
    3.times do
      play :D2, release: 0.35, amp: 0.5
      sleep [0.25, 0.5, 0.25].tick(:b)
    end
    
    2.times do
      play :A2, release: 0.35, amp: 0.5
      sleep 0.5
    end
    2.times do
      play :G2, release: 0.35, amp: 0.5
      sleep 0.5
    end
    play :A2, release: 0.35, amp: 0.5
    sleep 1
  end
  
  8.times do
    play :G2, release: 0.25, amp: 0.5
    sleep 0.25
  end
  
  8.times do
    play :A2, release: 0.25, amp: 0.5
    sleep 0.25
  end
  
  play :D2, amp: 0.5
  sleep 0.25
end

in_thread do
  33.times do
    sample :drum_heavy_kick
    sleep 0.5
  end
end

in_thread do
  16.times do
    sleep 0.5
    sample :drum_snare_hard
    sleep 0.5
  end
end

in_thread do
  65.times do
    sample :drum_cymbal_closed
    sleep 0.25
  end
end

in_thread do
  4.times do
    sample :drum_cymbal_open, amp: 0.35
    sleep 4
  end
end

in_thread do
  sleep 3.9
  4.times do
    sample :drum_snare_soft
    sleep 4
  end
end

in_thread do
  sleep 16
  sample :drum_cymbal_open
end
