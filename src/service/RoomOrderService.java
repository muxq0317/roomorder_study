package service;

import java.util.List;

import study.RoomOrder;

public interface RoomOrderService {
	List<RoomOrder> findALL(String roomid,String orderdate);
	void insertAll(RoomOrder r);
}
