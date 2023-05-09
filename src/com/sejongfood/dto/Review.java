package com.sejongfood.dto;

import java.util.Date;

public class Review {
	private	String rcode;
	private	String id;
	private	String pcode;
	private	String resdate;
	private	String rcontent;
	private	int	rpoint;
	
	public Review(){
		Date now = new Date();
		this.resdate = now.toString();
	}

	public String getRcode() {
		return rcode;
	}

	public void setRcode(String rcode) {
		this.rcode = rcode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getResdate() {
		return resdate;
	}

	public void setResdate(String resdate) {
		this.resdate = resdate;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public int getRpoint() {
		return rpoint;
	}

	public void setRpoint(int rpoint) {
		this.rpoint = rpoint;
	}
}
