package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

}
