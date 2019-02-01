# 16SegmentScrollingMarque
This Verilog was used with a Lattice MachXO3 and 16 segment displays

This says "Santa was here" it changed on Christmas night, I guess elves would have to know Verilog now-a-days...<br> 
<img src="https://github.com/tallenintegsys/16SegmentScrollingMarque/blob/master/docs/xmasOrnament.png">


It's easier to create this repo and strip out all the Diamond artifacts. <strike>Eventually I will port this to the IceStorm
or Synopsys logic-synthesis tool.</strike> I figured out how to get diamond to use Synplify! For now Diamond is required for
the LCMXO3LF-6900C-S-EVN dev board I am using because I can't be bothered to really understand the obfuscated build system yet.

At the risk of going on a rant, Diamond is written in Crayon, it's sluggish, it's buggy, it's over-complected, it's a PIA. 
When will these companies (I'm talking about you too Microchip) pull their head out--we don't want your stupid IDEs. 
Your IDE is just a way to fill my head with brain space wasting stuff that's specific to your product, a sort of 
intellectual vendor lock-in. Hey Microchip how's your PIC (mostly 8bit) sales doin? Conversely Lattice, how's your ICE40
sales doing (there's an open-source toolkit for ICE40).
