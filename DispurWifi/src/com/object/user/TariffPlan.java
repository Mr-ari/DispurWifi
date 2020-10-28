package com.object.user;

public class TariffPlan {
	
	private int planId,validity;
	private String planName,planType;
	private double rental,tariff;
	
	
	public TariffPlan(int validity, String planName, String planType, double rental, double tariff) {
		super();
		this.planId = -1;
		this.validity = validity;
		this.planName = planName;
		this.planType = planType;
		this.rental = rental;
		this.tariff = tariff;
	}
	public TariffPlan(int planId, int validity, String planName, String planType, double rental, double tariff) {
		super();
		this.planId = planId;
		this.validity = validity;
		this.planName = planName;
		this.planType = planType;
		this.rental = rental;
		this.tariff = tariff;
	}
	public int getPlanId() {
		return planId;
	}
	public void setPlanId(int planId) {
		this.planId = planId;
	}
	public int getValidity() {
		return validity;
	}
	public void setValidity(int validity) {
		this.validity = validity;
	}
	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public String getPlanType() {
		return planType;
	}
	public void setPlanType(String planType) {
		this.planType = planType;
	}
	public double getRental() {
		return rental;
	}
	public void setRental(double rental) {
		this.rental = rental;
	}
	public double getTariff() {
		return tariff;
	}
	public void setTariff(double tariff) {
		this.tariff = tariff;
	}
	
	
}
