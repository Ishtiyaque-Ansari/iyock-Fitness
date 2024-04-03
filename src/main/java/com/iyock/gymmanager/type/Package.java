package com.iyock.gymmanager.type;

public enum Package {
	REGULAR(500, "1 month"), SILVER(1250, "3 month"), GOLD(2400, "6 month"), PREMIUM(4200, "12 month");
	
	private final int price;
    private final String duration;

    Package(int price, String duration) {
        this.price = price;
        this.duration = duration;
    }

    public int getPrice() {
        return price;
    }

    public String getDuration() {
        return duration;
    }
    
    public String getValue() {
    	return name() + " - " + getPrice() + " for " + getDuration();
    }
}