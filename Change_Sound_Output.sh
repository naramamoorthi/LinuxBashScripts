input=$(pactl list sink-inputs | grep 'Input')
stream=${input//[!0-9]/}
pacmd move-sink-input $stream 1

