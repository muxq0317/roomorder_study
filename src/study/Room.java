package study;

import java.util.Date;

public class Room {

	private Integer roomid;
	private String roomnm;
	private Integer capacity;
	private Integer status;
	private Integer creatuser;
	private Date creatdate;
	private Integer updateuser;
	private Date updatedate;
	
    public Integer getRoomid() {
        return roomid;
    }
    public void setRoomid(Integer roomid) {
        this.roomid = roomid;
    }
    
    public String getRoomnm() {
        return roomnm;
    }
    public void setRoomnm(String roomnm) {
        this.roomnm = roomnm;
    }
    
    public Integer getCapacity() {
        return capacity;
    }
    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }
    
    public Integer getStatus() {
        return status;
    }
    public void setStatus(Integer status) {
        this.status = status;
    }
    
    public Integer getCreatuser() {
        return creatuser;
    }
    public void setCreatuser(Integer creatuser) {
        this.creatuser = creatuser;
    }
    
    public Date getcreatdate() {
        return creatdate;
    }
    public void setCreatdate(Date creatdate) {
        this.creatdate = creatdate;
    }
    
    public Integer getUpdateuser() {
        return updateuser;
    }
    public void setUpdateuser(Integer updateuser) {
        this.updateuser = updateuser;
    }
    
    public Date getUpdatedate() {
        return updatedate;
    }
    public void setUpdatedate(Date updatedate) {
        this.updatedate = updatedate;
    }
    
    @Override
    public String toString() {
        return roomid.toString();
    }
}
