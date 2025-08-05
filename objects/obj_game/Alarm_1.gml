global.dial_timer --;

if (global.dial_timer < 0) {
    global.dialogue_can = true
} else {
    alarm[1] = 1
}