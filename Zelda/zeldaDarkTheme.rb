#   _____             __        ____  __
#  / ___/____  ____  /_/____   / __ \/_/
#  \__ \/ __ \/ __ \/ / ___/  / /_/ / /
# ___/ / /_/ / / / / / /__   / ____/ /
#/____/\____/_/ /_/_/\___/  /_/   /_/
# =======================================
# Une Attente
# Dev: HOFFMANN Julien alias Lumina Hateo
# =======================================
#Variable
use_synth :tri #clochette Nes

live_loop :coeur do
  sample :bd_fat, amp: 0.2
  sleep 0.4
  sample :bd_pure, amp: 0.2
  sample :bd_fat, amp: 0.2
  sleep 1.6
end

1.times do
  sleep 8 #depart en 3eme boucle
end

4.times do
  live_loop :rythm do

    #1er temps: (0.5+0.5+0.25+0.25+0.5)=2tmps
    play 50, amp: 4
    sleep 0.5
    play 62, amp: 4, pan: 1
    play 57, amp: 3, pan: -1
    sleep 0.5
    play 62, amp: 5, pan: 1
    play 57, amp: 3, pan: -1
    sleep 0.25
    play 58, amp: 4
    sleep 0.25
    play 57, amp: 3
    with_fx :reverb, room: 0.75 do
      sample :drum_cymbal_closed, rate: 1
    end
    sleep 0.5

    #2eme temps: (0.5+0.5+1)=2tmps
    play 50, amp: 4
    sleep 0.5
    play 64, amp: 4, pan: 1
    play 57, amp: 3, pan: -1
    sleep 0.5
    play 64, amp: 5, pan: 1
    play 57, amp: 4, pan: -1
    with_fx :reverb, room: 0.75 do
      sample :bd_boom, amp: 10, rate: 0.4
    end
    sleep 1 #0.5

    #3eme temps: (0.5+0.5+1)=2tmps
    play 50, amp: 4
    sleep 0.5
    play 65, amp: 4, pan: 1
    play 67, amp: 3, pan: -1
    sleep 0.5
    play 65, amp: 5, pan: 1
    play 67, amp: 4, pan: -1
    with_fx :reverb, room: 0.75 do
      sample :drum_cymbal_closed, rate: 1
    end
    sleep 1

    #4eme temps: (0.5+0.5+0.25+0.25+0.5)=2tmps
    play 50, amp: 4
    sleep 0.5
    play 64, amp: 4, pan: 1
    play 57, amp: 3, pan: -1
    sleep 0.5
    play 64, amp: 5, pan: 1
    play 57, amp: 3, pan: -1
    sleep 0.25
    play 58, amp: 4
    sleep 0.25
    play 57, amp: 3
    with_fx :reverb, room: 0.75 do
      sample :bd_boom, amp: 5, rate: 0.7
    end
    sleep 0.5
  end

  1.times do
    sleep 24 #depart en 3eme boucle
  end

  live_loop :melodie do
    2.times do
      2.times do #2tmps
        play 50, amp: 10
        sleep 0.25
        play 53, amp: 10
        sleep 0.25
        play 62, amp: 10
        play 57, amp: 7
        sleep 1.5
      end

      #2tmps
      play 64, amp: 10
      sleep 0.25
      play 65, amp: 10
      sleep 0.25
      play 64, amp: 10
      sleep 0.25
      play 62, amp: 10
      sleep 0.25
      play 64, amp: 10
      sleep 0.25
      play 60, amp: 10
      sleep 0.25
      play 57, amp: 10
      play 55, amp: 8
      sleep 0.5

      sleep 2

      #2tmps
      play 57, amp: 10
      sleep 0.25
      play 50, amp: 10
      sleep 0.25
      play 53, amp: 10
      sleep 0.25
      play 55, amp: 10
      sleep 0.25
      play 57, amp: 10
      sleep 0.5

      sleep 2

      #2tmps
      play 57, amp: 10
      sleep 0.25
      play 50, amp: 10
      sleep 0.25
      play 53, amp: 10
      sleep 0.25
      play 55, amp: 10
      sleep 0.25
      play 52, amp: 10
      sleep 1

      sleep 4
    end
    sleep 16
  end
end
