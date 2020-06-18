package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.RoomDao;
import study.Room;
import util.DButil;

public class RoomDaompl implements RoomDao{

	@Override
	public Room findIdByroomnm(String roomnm) {
		Room room=null;
        ResultSet resultSet=null;
        PreparedStatement statement=null;
        Connection connection=null;
        try {
            connection= DButil.getConnection();
            String sql="select * from room where roomnm=?";
            statement=connection.prepareStatement(sql);
            statement.setString(1,roomnm);
            resultSet=statement.executeQuery();
            while (resultSet.next()){
                room=new Room();
                room.setRoomid(resultSet.getInt(1));
                room.setRoomnm(resultSet.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DButil.closeAll(resultSet,statement,connection);
        }
		return room;
	}

}
