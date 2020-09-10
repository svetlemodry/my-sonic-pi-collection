# Coded by Jaroslav Lichtblau


##| print all sonic-pi available sample names in log
print all_sample_names


##| play all sonic-pi available samples in full length

live_loop :samples do
  
  stop
  
  sample (all_sample_names).tick(:sampl), release: 0.4
  sleep sample_duration((all_sample_names).tick(:time))
end


##| play all sonic-pi samples - shortened to first half of the sample only

live_loop :samplesshorter do
  
  ##| stop
  
  sample (all_sample_names).tick(:sampl), release: 0.4, finish: 0.5
  sleep sample_duration((all_sample_names).tick(:time), finish: 0.5)
end
