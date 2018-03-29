# Quality of Life on a Pok3r Keyboard

These are some early customizations that made sense and feel pretty good so
far. They account for Windows and Mac usage, and have special affordances for
Vim, tmux, and general shell life.

## Base Setup

I've got DIP switch 3 turned on, so Caps is a Fn key. After many years of using
Caps as Ctrl, it will take a little while to acclimate. However, the modality
is generally comfortable after a surprisingly brief period. Having arrows and
navigation on the right hand home position is very nice and has taken the edge
off, because navigation is so common. These arrow chords are the same as I am
using on the ErgoDox EZ, which helps keep things consistent.

Because there is no bezel, left Ctrl is pretty easy to palm. This is still not
totally natural, particularly for my most commonly used scrolling in Vim:
Ctrl-u, Ctrl-d, Ctrl-e, and Ctrl-y. I figure that these will come along or that
I will grow accustomed to other navigation (e.g., {, }, zz, zb, z-enter) rather
quickly since I have chosen not to make affordances for them with Fn. In part,
they have served as fidget strokes because they were under my fingers, so I am
not too concerned.

## Layer 2

This is where the magic happens. So far, I only live on layer two. There is
only one key that is mapped differently without using Fn: Escape, which is set
to send backtick. Fn-` sends escape.

Some chording niceties for navigation and text editing:

 * `s`: Shift -- works as a regular modifier, left Shift
 * `d`: Ctrl -- right Ctrl (just in case I want to do something special)
 * `f`: Win -- left Win
 * `g`: Alt -- left Alt

A few shell/Vim survival items:

 * `a`: Ctrl-a -- for tmux sequences, especially Ctrl-a twice, or followed by arrows
 * `w`: Ctrl-w -- for Vim window sequences
 * `c`: Ctrl-c -- most common and quickly needed control sequence at the shell
 * `[`: Esc -- convenient escape, muscle memory from years of shell/Vim

Speculative text editing accelerators:

 * `Space`: Backspace -- for a few characters/words, this is very handy
 * `;`: Enter -- why move two keys away?
 * `'`: Hypen -- a little homage to Dvorak; dash on pinky always felt great
 * '\': Insert -- since Insert moved, put it near delete

Things I'll probably hit by muscle memory, but don't want to assign yet:

 * `e`: Shift -- mask Next with something harmless
 * `y`: Shift -- mask Cal
 * `p`: Shift -- mask PrtScr

This arrangement makes for extremely comfortable text movements and navigation
with modifiers. They follow the physical key order, sort of getting
progressively stronger to the right.

I always swap Cmd and Opt on the Mac to get the usual arrangement in software,
while leaving the keyboards with Win and Alt in their physical locations. This
makes the keyboard trivially usable with any computer.
