package com.hotel.vo;

import java.io.File;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class RoomVO {
	String roomtype,bedType,roomBsFile,roomFile;
	int roomNumber,defaultPriceWeekday, defaultpriceWeekend,memberdefaultPriceWeekday,memberdefaultPriceWeekend,roomtotalUser,roomSize,roomFloor,roomClose;
	CommonsMultipartFile roomfile;
	
	public CommonsMultipartFile getRoomfile() {
		return roomfile;
	}
	public void setRoomfile(CommonsMultipartFile roomfile) {
		this.roomfile = roomfile;
	}
	
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public String getBedType() {
		return bedType;
	}
	public void setBedType(String bedType) {
		this.bedType = bedType;
	}
	public String getRoomBsFile() {
		return roomBsFile;
	}
	public void setRoomBsFile(String roomBsFile) {
		this.roomBsFile = roomBsFile;
	}
	public String getRoomFile() {
		return roomFile;
	}
	public void setRoomFile(String roomFile) {
		this.roomFile = roomFile;
	}
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	public int getDefaultPriceWeekday() {
		return defaultPriceWeekday;
	}
	public void setDefaultPriceWeekday(int defaultPriceWeekday) {
		this.defaultPriceWeekday = defaultPriceWeekday;
	}
	public int getDefaultpriceWeekend() {
		return defaultpriceWeekend;
	}
	public void setDefaultpriceWeekend(int defaultpriceWeekend) {
		this.defaultpriceWeekend = defaultpriceWeekend;
	}
	public int getMemberdefaultPriceWeekday() {
		return memberdefaultPriceWeekday;
	}
	public void setMemberdefaultPriceWeekday(int memberdefaultPriceWeekday) {
		this.memberdefaultPriceWeekday = memberdefaultPriceWeekday;
	}
	public int getMemberdefaultPriceWeekend() {
		return memberdefaultPriceWeekend;
	}
	public void setMemberdefaultPriceWeekend(int memberdefaultPriceWeekend) {
		this.memberdefaultPriceWeekend = memberdefaultPriceWeekend;
	}
	public int getRoomtotalUser() {
		return roomtotalUser;
	}
	public void setRoomtotalUser(int roomtotalUser) {
		this.roomtotalUser = roomtotalUser;
	}
	public int getRoomSize() {
		return roomSize;
	}
	public void setRoomSize(int roomSize) {
		this.roomSize = roomSize;
	}
	public int getRoomFloor() {
		return roomFloor;
	}
	public void setRoomFloor(int roomFloor) {
		this.roomFloor = roomFloor;
	}
	public int getRoomClose() {
		return roomClose;
	}
	public void setRoomClose(int roomClose) {
		this.roomClose = roomClose;
	}
	
	
	
}
