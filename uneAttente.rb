# music to Sonic Pi
# =================
# Une Attente
# Dev: HOFFMANN Julien alias Lumina Hateo
# =======================================

live_loop :guit do
  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :drum_heavy_kick
    sample :drum_heavy_kick, rate: 0.5
  end
  sleep 2

  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :drum_heavy_kick, rate: 1
  end
  sleep 2


  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :guit_em9, rate: 0.5
    # sample :guit_e_fifths, rate: 0.8
    sample :drum_heavy_kick
    with_fx :echo, mix: 0.3, phase: 0.5 do
      sample :drum_cymbal_closed, rate: 1
    end
  end
  sleep 8

  live_loop :boom do
    with_fx :reverb, room: 0.75 do
      sample :bd_boom, amp: 10, rate: 1
      sample :drum_snare_hard
    end
    with_fx :echo, mix: 0.3, phase: 0.5 do
      sample :drum_cymbal_closed, rate: 1
    end
    sleep 8
  end

  live_loop :bass do
    play :e2
    sleep 0.25
    play :d2
    sleep 2
    play :g2
    sleep 0.75
    play :e2
    sleep 1
  end
end
