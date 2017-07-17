package user;

public class UserService implements UserServiceInterface{

	@Override
	public void addUser(UserVO vo) {
		new UserDAO().addUser(vo.getId(), vo.getPassword(), vo.getNickname(), vo.getQuestion(), vo.getAnswer());
	}

	@Override
	public boolean login(UserVO vo) {
		return new UserDAO().login(vo.getId(), vo.getPassword());
	}
	
}
