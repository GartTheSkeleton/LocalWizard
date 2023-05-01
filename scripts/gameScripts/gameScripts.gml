
global.paused = false;

function camera_shake(intensity, duration) {
    global.shake_intensity = intensity;
    global.shake_duration = duration;
}

function next_song_in_array(nextsong) {
    // Define your song array
    var song_array = [sng_hrrrnngh_MOODY_SYNTH,sng_anode_acid,sng_dreamy,sng_Encroaching];

    // Find the index of nextsong in the array
    var index = -1;
    for (var i = 0; i < array_length(song_array); ++i) {
        if (song_array[i] == nextsong) {
            index = i;
            break;
        }
    }

    // If the song is found, return the next song (wrapping back to 0 if necessary)
    if (index != -1) {
        var next_index = (index + 1) % array_length(song_array);
        return song_array[next_index];
    } else {
        // Return an error message if the song is not found in the array
        return "Song not found in the array.";
    }
}