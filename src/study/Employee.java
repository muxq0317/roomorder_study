package study;

import java.util.Date;

public class Employee {

	private Integer empid;
	private String empnm;
	private String empnumber;
	private Integer teamid;
	private Integer empgrade;
	private Integer creatuser;
	private Date creatdate;
	private Integer updateuser;
	private Date updatedate;
	
    public Integer getEmpid() {
        return empid;
    }
    public void setEmpid(Integer empid) {
        this.empid = empid;
    }
    
    public String getEmpnm() {
        return empnm;
    }
    public void setEmpnm(String empnm) {
        this.empnm = empnm;
    }
    
    public String getEmpnumber() {
        return empnumber;
    }
    public void setEmpnumber(String empnumber) {
        this.empnumber = empnumber;
    }
    
    public Integer getTeamid() {
        return teamid;
    }
    public void setTeamid(Integer teamid) {
        this.teamid = teamid;
    }
    
    public Integer getEmpgrade() {
        return empgrade;
    }
    public void setEmpgrade(Integer empgrade) {
        this.empgrade = empgrade;
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
        return empid.toString();
    }
}
