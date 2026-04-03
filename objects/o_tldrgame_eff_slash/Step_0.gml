event_inherited()

if(image_yscale == 1.25) {
    callthisonce = true
} else if (image_yscale == 0) {
    instance_destroy()
}

if(callthisonce) {
    animate(1.25,0,8,anime_curve.sine_out,id,"image_yscale")
    callthisonce = false
}
