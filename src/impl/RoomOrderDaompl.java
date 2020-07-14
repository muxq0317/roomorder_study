package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.RoomOrderDao;
import study.RoomOrder;
import util.DButil;

public class RoomOrderDaompl implements RoomOrderDao{

	@Override
	public List<RoomOrder> findAll(String roomid, String orderdate) {
		List<RoomOrder> roomorders=new ArrayList<>();
        Connection connection=null;
        PreparedStatement statement=null;
        ResultSet resultSet=null;
        try {
            connection= DButil.getConnection();
            String sql="select * from room_order where roomid=? and orderdate=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1,roomid);
            statement.setString(2,orderdate);
            resultSet=statement.executeQuery();
            while (resultSet.next()){
            	RoomOrder roomorder=new RoomOrder();
            	roomorder.setRoomid(resultSet.getString(1));
            	roomorder.setEmpid(resultSet.getString(2));
            	roomorder.setOrderdate(resultSet.getString(3));
            	roomorder.setStarttime(resultSet.getInt(4));
            	roomorder.setEndtime(resultSet.getInt(5));
            	roomorders.add(roomorder);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //7.¹Ø±Õ×ÊÔ´
            DButil.closeAll(resultSet,statement,connection);
        }
		return roomorders;
	}
	
	public void insertAll(RoomOrder r) {

        Connection connection=null;
        PreparedStatement statement=null;
        
            connection= DButil.getConnection();
            String sql="INSERT INTO room_order(room_id, emp_id, order_date, start_time, end_time)"
                    +"values("+"?,?,?,?,?)";
            try {
				statement=connection.prepareStatement(sql);
				statement.setString(1,r.getRoomid());
	            statement.setString(2,r.getEmpid());
	            statement.setString(3, r.getOrderdate());
	            statement.setInt(4, r.getStarttime());
	            statement.setInt(5,r.getEndtime());
	            
	            statement.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			}
            
	
	}

}
