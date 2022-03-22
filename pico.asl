state("pico_park") {
    string15 levelName: 0xB5CE20,0xA8,0x38,0x134;
}

start {
    if(current.levelName.Equals("LEVEL 1-1")) {
        return true;
    }
}

split {
    if (!old.levelName.Equals("Clear") && current.levelName.Equals("Clear")) {
        return true;
    }
}