package service;

import dao.RoomDao;
import impl.RoomDaompl;
import study.Room;

public class RoomServiceImpl implements RoomService{

	RoomDao roomDao = new RoomDaompl();
	@Override
	public Room findIdByroomnm(String roomnm) {
		Room room = roomDao.findIdByroomnm(roomnm);
		return room;
	}

}
