state("pico_park") {
    string15 levelName: 0xB5CE20, 0xA8, 0x38, 0x134;
}

start {
    return current.levelName.StartsWith("LEVEL");
}

split {
    return !old.levelName.Equals("CLEAR") && current.levelname.Equals("CLEAR");
}
