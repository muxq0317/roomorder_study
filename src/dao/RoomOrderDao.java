package dao;

import java.util.List;

import study.RoomOrder;

public interface RoomOrderDao {
	List<RoomOrder> findAll(String roomid,String orderdate);

}
