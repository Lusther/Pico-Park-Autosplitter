state("pico_park") {
    string15 levelName: 0xB5CE20, 0xA8, 0x38, 0x134;
}

start {
    if(current.levelName.Equals("LEVEL 1-1")) {
        return true;
    }
}

split {
    if (current.levelName.Equals("CLEAR") && !old.levelName.Equals("CLEAR")){
    return true;
    }
}
