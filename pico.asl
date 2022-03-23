state("pico_park") {
    string15 levelName: 0xB5CE20, 0xA8, 0x38, 0x134;
}

start {
    return old.levelName != "LEVEL 1-1" && current.levelName == "LEVEL 1-1";
}

split {
    return old.levelName != "CLEAR" && current.levelname == "CLEAR";
}
