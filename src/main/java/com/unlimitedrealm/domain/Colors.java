package com.unlimitedrealm.domain;


import java.util.ArrayList;
import java.util.List;

public class Colors {
    boolean black;
    boolean blue;
    boolean red;
    boolean green;
    boolean brown;
    boolean pink;
    boolean grey;
    boolean purple;
    boolean yellow;
    boolean orange;
    boolean maroon;
    boolean silver;
    boolean white;
    boolean golden;

    public List<String> getHashColors() {
        List<String> hashColors = new ArrayList<>();
        if (black) {
            hashColors.add("#000000");
        } else if (blue) {
            hashColors.add("#1664c4");
        } else if (red) {
            hashColors.add("#c00707");
        } else if (green) {
            hashColors.add("#6fcc14");
        } else if (brown) {
            hashColors.add("#943f00");
        } else if (pink) {
            hashColors.add("#ff1cae");
        } else if (grey) {
            hashColors.add("#adadad");
        } else if (purple) {
            hashColors.add("#5d00dc");
        } else if (yellow) {
            hashColors.add("#f1f40e");
        } else if (orange) {
            hashColors.add("#ffc600");
        } else if (maroon) {
            hashColors.add("#9b1d00");
        } else if (silver) {
            hashColors.add("#ecf1ef");
        } else if (white) {
            hashColors.add("#ffffff");
        } else if (golden) {
            hashColors.add("FFD700");
        }
        return hashColors;
    }

    public boolean isBlack() {
        return black;
    }

    public void setBlack(boolean black) {
        this.black = black;
    }

    public boolean isBlue() {
        return blue;
    }

    public void setBlue(boolean blue) {
        this.blue = blue;
    }

    public boolean isRed() {
        return red;
    }

    public void setRed(boolean red) {
        this.red = red;
    }

    public boolean isGreen() {
        return green;
    }

    public void setGreen(boolean green) {
        this.green = green;
    }

    public boolean isBrown() {
        return brown;
    }

    public void setBrown(boolean brown) {
        this.brown = brown;
    }

    public boolean isPink() {
        return pink;
    }

    public void setPink(boolean pink) {
        this.pink = pink;
    }

    public boolean isGrey() {
        return grey;
    }

    public void setGrey(boolean grey) {
        this.grey = grey;
    }

    public boolean isPurple() {
        return purple;
    }

    public void setPurple(boolean purple) {
        this.purple = purple;
    }

    public boolean isYellow() {
        return yellow;
    }

    public void setYellow(boolean yellow) {
        this.yellow = yellow;
    }

    public boolean isOrange() {
        return orange;
    }

    public void setOrange(boolean orange) {
        this.orange = orange;
    }

    public boolean isMaroon() {
        return maroon;
    }

    public void setMaroon(boolean maroon) {
        this.maroon = maroon;
    }

    public boolean isSilver() {
        return silver;
    }

    public void setSilver(boolean silver) {
        this.silver = silver;
    }

    public boolean isWhite() {
        return white;
    }

    public void setWhite(boolean white) {
        this.white = white;
    }

    public boolean isGolden() {
        return golden;
    }

    public void setGolden(boolean golden) {
        this.golden = golden;
    }
}
