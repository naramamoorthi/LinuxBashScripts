#This script was created to address an issue in Ubuntu where the sound will not change to the active output device.

input=$(pactl list sink-inputs | grep 'Input')
stream=${input//[!0-9]/}
pacmd move-sink-input $stream 1

