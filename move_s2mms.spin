CON

_clkmode      = xtal1 + pll16x
_xinfreq      = 5_000_000

OBJ

  s2 : "s2mms"

PUB start
  s2.start_motors
  repeat
    waitcnt(clkfreq + cnt)
    waitpne(|< s2#BUTTON, |< s2#BUTTON,0)
    s2.run_motors_mms(0,0,0,0.00,0.00, 2000)
    s2.move_distance_mms(10.0, 0.0, 5.0)
    s2.move_distance_mms(100.0, 10.0, 0.0)
