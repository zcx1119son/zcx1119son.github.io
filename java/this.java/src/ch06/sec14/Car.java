package ch06.sec14;

public class Car {
	private double speed;
	private boolean stop;
	
	
	public double getSpeed() {
		return speed;
	}
	public void setSpeed(double speed) {
		if(speed<0) {
			this.speed=0;
		}else {
		this.speed = speed;
		}
	}
	public boolean isStop() {
		return stop;
	}
	public void setStop(boolean stop) {
		this.stop = stop;
		if(stop==true)this.speed=0;
	}
	
	
}
