package study;

public class RoomOrder {
	private String roomid;
	private String empid;
    private String orderdate;
    private Integer starttime;
    private Integer endtime;

    public String getRoomid() {
        return roomid;
    }
    public void setRoomid(String roomid) {
        this.roomid = roomid;
    }
    public String getEmpid() {
        return empid;
    }
    public void setEmpid(String empid) {
        this.empid = empid;
    }
    public String getOrderdate() {
        return orderdate;
    }
    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }
    public Integer getStarttime() {
        return starttime;
    }
    public void setStarttime(Integer starttime) {
        this.starttime = starttime;
    }
    public Integer getEndtime() {
        return endtime;
    }
    public void setEndtime(Integer endtime) {
        this.endtime = endtime;
    }
}
