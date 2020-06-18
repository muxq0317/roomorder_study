package service;

import java.util.List;

import dao.RoomOrderDao;
import impl.RoomOrderDaompl;
import study.RoomOrder;

public class RoomOrderServiceImpl implements RoomOrderService{

	RoomOrderDao roomorderDao = new RoomOrderDaompl();

	@Override
	public List<RoomOrder> findALL(String roomid, String orderdate) {
		List<RoomOrder> roomorders = roomorderDao.findAll(roomid,orderdate);
        return roomorders;
	}

}
